#include "tree.h"
#include "ObjectIdType.h"
#include "Predict2LearnCell.cc"
#include "Pool.h"
#include "PoolAlloc2.h"
#include "Predict2Utils.h"
#include "ErrnoUtil.h"
#include "StringUtils.h"

#include <stdint.h>
#include <map>
#include <fcntl.h>
#include <errno.h>
#include <algorithm>
#include <fcntl.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <exception>
#include <stdexcept>
#include <stdio.h>
#include <stdarg.h>
#include <string.h>
#include <boost/thread/mutex.hpp>

using namespace std;
#ifndef STLPORT
using namespace __gnu_cxx;
#endif



typedef boost::mutex Predict2Lock;
typedef boost::mutex::scoped_lock Predict2ScopedReadLock;
typedef boost::mutex::scoped_lock Predict2ScopedWriteLock;

#define CPM_STARTUP_CONVERSIONS 10

/* HACK defines START */
#define LOG_WARNING 1
#define LOG_ERR 2
#define P2_PPROB_OUTPUT
//Predict2Lock gPredict2Lock;
/* HACK defines END */

/* All the elements are below. */


struct predict2_cache_header
{
    uint32_t num_click_rows;
    uint32_t num_pvc_rows;
    uint32_t num_pcc_rows;
    uint32_t num_click_throttle_rows;
    uint32_t num_pv_conv_throttle_rows;
    uint32_t num_pc_conv_throttle_rows;
    uint32_t num_pub_class_rows;
    uint32_t num_servers;
    uint32_t num_cpa_learn_cells;
    uint32_t num_dcpm_learn_cells;
    uint32_t num_cpc_learn_cells;
    uint32_t num_dcpm_click_learn_cells;
    uint32_t num_section_pearl_cells;
    uint32_t num_site_pearl_cells;
    uint32_t num_vurl_pearl_cells;
    uint32_t num_pub_pearl_cells;
    char     predict2_cache_version[64];
};

bool operator==(const predict2_cache_header& header1, const predict2_cache_header& header2);

struct throttle_budget_element
{
    mixed_id_t key;
    float budget;
};

bool operator<(const throttle_budget_element& rhs1, const throttle_budget_element& rhs2);

enum enum_learning_status
{
    P2_LEARN_OPTIMIZED,
    P2_LEARN_NOT_APPLICABLE,
    P2_LEARN_NEW,
    P2_LEARN_LEARNING
};

//
// This structure is to inform on the last level reached
// in each predict tree (click plus, pv conv, pc conv)
// after a probability computation.
//
struct Predict2Stats
{
    int lastLevelClickPlus;
    int lastLevelPVConv;
    int lastLevelPCConv;

    Predict2Stats() : lastLevelClickPlus(-1), lastLevelPVConv(-1), lastLevelPCConv(-1) {}
    ~Predict2Stats() {}
};


struct ThrottleMemPool 
{
	static Pool *fPool;
	static Pool* getPool() { return fPool; }
}; // memory pool we'll need to build throttle trees on the fly


ssize_t readall(int fd, void *buf, size_t nbytes)
{
    unsigned char* ptr = (unsigned char*)buf;
    size_t n = 0;
    for (;;) {
        int b = read(fd, ptr, nbytes - n);
        if (b == 0) {            
            break;
        }
        if (b > 0) {
            ptr += b;
            n += b;
            if (n == nbytes) break;
        } else {
                            
                return -1;
            
        }
    }
    return n;
}

bool operator==(const predict2_cache_header& header1, const predict2_cache_header& header2)
{
    return 
        (header1.num_click_rows == header2.num_click_rows) &&
        (header1.num_pvc_rows == header2.num_pvc_rows) &&
        (header1.num_pcc_rows == header2.num_pcc_rows) &&
        (header1.num_click_throttle_rows == header2.num_click_throttle_rows) &&
        (header1.num_pv_conv_throttle_rows == header2.num_pv_conv_throttle_rows) &&
        (header1.num_pc_conv_throttle_rows == header2.num_pc_conv_throttle_rows) &&
        (header1.num_pub_class_rows == header2.num_pub_class_rows) &&
        (header1.num_servers == header2.num_servers) &&
        (header1.num_cpa_learn_cells == header2.num_cpa_learn_cells) &&
        (header1.num_dcpm_learn_cells == header2.num_dcpm_learn_cells) &&
        (header1.num_cpc_learn_cells == header2.num_cpc_learn_cells) &&
        (header1.num_dcpm_click_learn_cells == header2.num_dcpm_click_learn_cells) &&
        (header1.num_section_pearl_cells == header2.num_section_pearl_cells) &&
        (header1.num_site_pearl_cells == header2.num_site_pearl_cells) &&
        (header1.num_vurl_pearl_cells == header2.num_vurl_pearl_cells) &&
        (header1.num_pub_pearl_cells == header2.num_pub_pearl_cells) &&
        (strcmp(header1.predict2_cache_version, header2.predict2_cache_version) == 0);
}

bool operator<(const throttle_budget_element& rhs1, const throttle_budget_element& rhs2)
{
    return rhs1.key < rhs2.key;
}

/* error handler */
static void
error(int ec, const char *str, ...)
{
    va_list ap;

    va_start(ap, str);
    fprintf(stderr, "uuid:ERROR: ");
    vfprintf(stderr, str, ap);
    fprintf(stderr, "\n");
    va_end(ap);
    exit(ec);
}

/* usage handler */
static void
usage(const char *str, ...)
{
    va_list ap;

    va_start(ap, str);
    if (str != NULL) {
        fprintf(stderr, "uuid:ERROR: ");
        vfprintf(stderr, str, ap);
        fprintf(stderr, "\n");
    }
    fprintf(stderr, "usage: uuid [-v version] [-m] [-n count] [-1] [-F format] [-o filename] [namespace name]\n");
    fprintf(stderr, "usage: uuid -d [-F format] [-o filename] [uuid]\n");
    va_end(ap);
    exit(1);
}
/**
 * Predict2 Cache class
 * Provides interface to work with predict2 cache
 * CacheElement is different for standart and service caches hence this class is a template
 */
template<class CacheElement> class Predict2Cache
{
private:
    struct ThrottleMemPool 
    {
        static Pool *fPool;
        static Pool* getPool() { return fPool; }
    }; // memory pool we'll need to build throttle trees on the fly

protected:
    typedef tree<throttle_budget_element, PoolAlloc2<throttle_budget_element, ThrottleMemPool> > ThrottleBudgetTree;
    ThrottleBudgetTree* fClickThrottleBudget; ///< click throttle tree
    ThrottleBudgetTree* fPvcThrottleBudget; ///< post-view throttle tree
    ThrottleBudgetTree* fPccThrottleBudget; ///< post-click throttle tree
    unsigned char *fMap; ///< pointer to the the p2 cache
    size_t fMapLength; ///< p2 cache size
    predict2_cache_header* fHeader; ///< pointer to the cache header
    CacheElement* fClickRows; ///< pointer to the beginning of serialized click plus tree
    CacheElement* fPvcRows; ///< pointer to the serialaized post view tree
    CacheElement* fPccRows; ///< pointer to the serialized post click tree
    p2_throttle_cache_element* fClickThrottleCache; ///< pointer to the click throttle array
    p2_throttle_cache_element* fPVConvThrottleCache; ///< pointer to the post-view throttle array
    p2_throttle_cache_element* fPCConvThrottleCache; ///< pointer to the post-click throttle array
    p2_pub_class_element* fPubClassCache; ///< pointer to the pub class array
    Predict2LearnCell<cr_camp_conv_pearl_key>* fCPALearnCache; ///< pointer to the array containing data on CPA learn deals
    Predict2LearnCell<cr_camp_conv_pearl_key>* fDcpmLearnCache; ///< pointer to the array containing data on dCPM learn deals with conv target
    Predict2LearnCell<cr_pearl_key>* fCpcLearnCache; ///< pointer to the array containing data on CPC learn deals
    Predict2LearnCell<cr_camp_pearl_key>* fDcpmClickLearnCache; ///< pointer to the array containing data on dCPM learn deals with click target

    p2_pearl_map_element* fSectionPearlCache; ///< pointer to the section->pearl map array
    p2_pearl_map_element* fSitePearlCache; ///< pointer to the site->pearl map array
    p2_pearl_map_element* fVurlPearlCache; ///< pointer to the vurl->pearl map array
    p2_pearl_map_element* fPubPearlCache; ///< pointer to the pub->pearl map array

    /** \brief validates cache. checks its integrity
     * \param[in] cache Cache to be validated
     * \param[in] size Cache size
     * \return true if the cache is bad, false otherwise
     */
    template <class Elem>
    bool validateCache(Elem* cache, size_t size) const;
    /** \brief validates one node of the tree. Is called multiple times by validateCache
     * \param[in] cache
     * \param[in] elem_pos Offset of the element to be validated
     * \param[in] size 
     * \return -1 if there was an error, number of nodes that have been validated otherwise
     */
    template <class Elem>
    int validateNode(Elem* cache, uint32_t elem_pos, size_t size) const;
    /** \brief populates some fields of the key based on other fields
     * \param[in]predict_key
     */
    void preprocessKey(predict_cache_key& predict_key) const;

    /** \brief registers post-view impression in the throttle budget trees
     * \param[in,out] predict_key pub_class and pearl_id fields are populated
     * \param[in] frequency_bucket
     * \param[in] recency_bucket
     * \param[in] CPA pricing type amount(?)
     * \param[out] Predict2Stats
     */
    void registerPvcImpression(predict_cache_key& predict_key,
                               const int& frequency_bucket, const int& recency_bucket,
                               const double& CPA, Predict2Stats& predict2Stats);

    /** \brief registers post-click impression in the throttle budget trees
     * \param[in,out] predict_key pub_class and pearl_id fields are populated
     * \param[in] frequency_bucket
     * \param[in] recency_bucket
     * \param[in] CPA pricing type amount(?)
     * \param[out] Predict2Stats
     */
    void registerPccImpression(predict_cache_key& predict_key,
                               const int& frequency_bucket, const int& recency_bucket,
                               const double& CPA, Predict2Stats& predict2Stats);

    /** \brief For each layer of a given key in the budget tree for click events,
     *         update the budget. Check that all the layers have a non-negative budget.
     *
     * \param[in] predict_cache_key
     * \param[in] throttle_status
     * \return false if budget is exhausted (i.e. the budget of at least one layer is negative)
     */
    bool checkClickBudget(const predict_cache_key& key, int& throttle_status) const;

    /** \brief checks if there is post-view budget left
     * \param[in] key
     * \param[out] throttle_status level of the node in the throttle tree
     * \return true if there is budget left, false if there is no budget
     */
    bool checkPvcBudget(const predict_cache_key& key, int& throttle_status) const;

    /** \brief checks if there is post-click budget left
     * \param[in] key
     * \param[out] throttle_status level of the node in the throttle tree
     * \return true if there is budget left, false if there is no budget
     */
    bool checkPccBudget(const predict_cache_key& key, int& throttle_status) const;

public:
    /** \brief Constructor
     */
    Predict2Cache();
    /** \brief Destructor. Frees the map
     */
    ~Predict2Cache()
    { freeMap(); }

    /** \brief Simple validation check.
     *
     * This check is very simple.  It's designed to check if the cache
     * was loaded or not.  it can be made more complicated but the
     * check must be VERY FAST since we lock on it.
     *
     * \return TRUE if the current cache is ready to be used.  FALSE is
     * the cache has not been loaded or invalid.
     */
    bool isValid() const
    {
        return (fMap != NULL);
    }

    /** \brief Loads the cache
     * \param[in] qs STL string. Specifies path to the cache file
     * \return true if was loaded OK
     */
    bool openMap(const string& qs);
    /** \brief frees p2 map and cleans up throttle trees
     * \return 0 always. Hmmm...
     */
    int freeMap();
    /** \brief validates the cache file
     * \param[in] rawmap pointer to the map
     * \param[in] size map size
     * \return true if the check is passed, false if not
     */
    bool validateRawMap(unsigned char* rawmap, size_t size) const;

    /** \brief reads click probability from the cache
     * This does something
     *
     * \param[in,out] predict_key pub_class and pearl_id fields are populated
     * \param[in,out] frequency_bucket  updated to hold f-bucket
     * \param[in,out] recency_bucket updated to hold r-bucket
     * \param[in] checkBudget  true if the click throttle budget must be checked
     * \param[out] throttle_status 
     * \param[in] predict2Stats
     * \return a float describing the probability [0,1)
     */
    float getClickProb(predict_cache_key& predict_key, const int& frequency_bucket,
                       const int& recency_bucket, bool checkBudget,
                       int& throttle_status, Predict2Stats& predict2Stats) const;

    /** \brief reads conv probability from the cache
     * This does something
     *
     * \param[in,out] predict_key pub_class and pearl_id fields are populated
     * \param[in] is_post_view Shouldn't be passed by const reference?
     * \param[in,out] frequency_bucket 
     * \param[in,out] recency_bucket
     * \param[out] throttle_status level of the node in the throttle tree
     * \param[in] checkBudget  true if the conv throttle budget must be checked
     * \param[out] Predict2Stats
     * \return a float describing the probability [0,1)
     */
    float getConvProb(predict_cache_key& predict_key, bool is_post_view,
                      const int& frequency_bucket, const int& recency_bucket, bool checkBudget,
                      int& throttle_status, Predict2Stats& predict2Stats) const;

    /** \brief Register a click into the corresponding throttle budget tree. Non-constant.
     *
     * \param[in,out] predict_key pub_class and pearl_id fields are populated
     * \param[in] frequency_bucket
     * \param[in] recency_bucket
     * \param[in] CPC
     * \param[in,out] predict2Stats
     * \return true if operation succeeded, false otherwise
     */
    bool registerClickImpression(predict_cache_key& predict_key,
                                 const int& frequency_bucket, const int& recency_bucket,
                                 const double& CPC, Predict2Stats& predict2Stats);

    /** \brief registers impression in the throttle budget trees. Non-constant
     * This does something
     *
     * \param[in] predict_key pub_class and pearl_id fields are populated
     * \param[in] is_post_view Shouldn't be passed by const reference?
     * \param[in] frequency_bucket 
     * \param[in] recency_bucket
     * \param[in] CPA price amount (?)
     * \param[out] Predict2Stats
     * \return false on error, true otherwise
     */
    bool registerConvImpression (predict_cache_key& predict_key, bool is_post_view,
                                 const int& frequency_bucket, const int& recency_bucket, 
                                 const double& CPA, Predict2Stats& predict2Stats);

    /** \brief reads average click prob
     * is needed for LH stats
     * \return average click probability
     */    
    float getClickDumbProb () const;
    /** \brief reads average conv prob
     * is needed for LH stats
     * \param[in] is_post_view shouldn't be passed by const reference?
     * \return average conv probability
     */
    float getConvDumbProb (bool is_post_view) const;
    /** \brief Returns version of the loaded cache
     * \return version of the loaded cache
     */
    const char* getCacheVersion () const;//returns current cache version

    /** \brief Get learning probability for CPA learning.
     *
     * \param[in]  section_id
     * \param[in]  site_id
     * \param[in]  vurl_id
     * \param[in]  publisher_id
     * \param[in]  creative_id
     * \param[in]  campaign_id
     * \param[in]  conversion_id
     * \param[out] learn_status
     * \return -1.0 if cell is optimised OR is not learnable OR has too few data
     */
    float getCPALearnProb(const uint32_t section_id,
                          const site_id_t site_id,
                          const uint32_t vurl_id,
                          const entity_id_t publisher_id,
                          const creative_id_t creative_id,
                          const campaign_id_t campaign_id,
                          const conversion_id_t conversion_id,
                          enum_learning_status& learn_status) const;
    
    /** \brief Get learning probability for learning on dCPM deals with conversion target.
     *
     * \param[in]  section_id
     * \param[in]  site_id
     * \param[in]  vurl_id
     * \param[in]  publisher_id
     * \param[in]  creative_id
     * \param[in]  campaign_id
     * \param[in]  conversion_id
     * \param[out] learn_status
     * \return -1.0 if cell is optimised OR is not learnable OR has too few data
     */
    float getDcpmLearnProb(const uint32_t section_id,
                           const site_id_t site_id,
                           const uint32_t vurl_id,
                           const entity_id_t publisher_id,
                           const creative_id_t creative_id,
                           const campaign_id_t campaign_id,
                           const conversion_id_t conversion_id,
                           enum_learning_status& learn_status) const;

    /**
     * Get learning probability for CPC learning.
     *
     * \param[in]  section_id
     * \param[in]  site_id
     * \param[in]  vurl_id
     * \param[in]  publisher_id
     * \param[in]  creative_id
     * \param[out] learn_status
     * \return -1.0 if cell is optimised OR is not learnable OR has too few data
     */
    float getCpcLearnProb(const uint32_t section_id,
                          const site_id_t site_id,
                          const uint32_t vurl_id,
                          const entity_id_t publisher_id,
                          const creative_id_t creative_id,
                          enum_learning_status& learn_status) const;

    /** \brief Get learning probability for learning on dCPM deals with click target.
     *
     * \param[in]  section_id
     * \param[in]  site_id
     * \param[in]  vurl_id
     * \param[in]  publisher_id
     * \param[in]  creative_id
     * \param[in]  campaign_id
     * \param[out] learn_status
     * \return -1.0 if cell is optimised OR is not learnable OR has too few data
     */
    float getDcpmClickLearnProb(const uint32_t section_id,
                                const site_id_t site_id,
                                const uint32_t vurl_id,
                                const entity_id_t publisher_id,
                                const creative_id_t creative_id,
                                const campaign_id_t campaign_id,
                                enum_learning_status& learn_status) const;

    /** \brief gets pearl_id from (section, site, vurl, publisher)
     * \param[in] section_id
     * \param[in] site_id
     * \param[in] vurl_id
     * \param[in] publisher_id
     * \return corresponding pearl_id
     */
    uint64_t getPearl(const uint32_t section_id, const site_id_t site_id,
                      const uint32_t vurl_id, const entity_id_t publisher_id) const;

    /** \brief Checks if the pearl_id(section, site, vurl, publisher) is not 0
     *         We only p2-learn on pearlified objects (pearl_id != 0)
     * \param[in] section_id
     * \param[in] site_id
     * \param[in] vurl_id
     * \param[in] publisher_id
     * \return true if the pearl is not 0, false otherwise
     */
    bool isPearlified (const uint32_t section_id, const site_id_t site_id,
                       const uint32_t vurl_id, const entity_id_t publisher_id) const;
};

//Implementation

template<class CacheElement> Pool* Predict2Cache<CacheElement>::ThrottleMemPool::fPool(new Pool(1024 * 1024)); // 1 Mb

template<class CacheElement>
Predict2Cache<CacheElement>::Predict2Cache()
{
    fMap = NULL;
    fHeader = NULL;
    fClickRows = NULL;
    fPvcRows = NULL;
    fPccRows = NULL;
    fClickThrottleCache = NULL;
    fPVConvThrottleCache = NULL;
    fPCConvThrottleCache = NULL;
    fClickThrottleBudget = NULL;
    fPccThrottleBudget = NULL;
    fPvcThrottleBudget = NULL;
    fPubClassCache = NULL;
    fCPALearnCache = NULL;
    fDcpmLearnCache = NULL;
    fCpcLearnCache = NULL;
    fDcpmClickLearnCache = NULL;
    fSectionPearlCache = NULL;
    fSitePearlCache = NULL;
    fVurlPearlCache = NULL;
    fPubPearlCache = NULL;
}

template<class CacheElement>
const char* Predict2Cache<CacheElement>::getCacheVersion() const
{
    if (fHeader != NULL)
        return fHeader->predict2_cache_version;
    else return NULL;
}

template<class CacheElement> template<class Elem>
int Predict2Cache<CacheElement>::validateNode(Elem* cache, uint32_t elem_pos, size_t size) const
{
    if (elem_pos >= size) {
        return -1;
    }
    if (cache[elem_pos].num_childs != 0 && cache[elem_pos].childs_offset + cache[elem_pos].num_childs > size) {
        return -1;
    }
    int num_nodes = 1;
    //check childs and sort order
    for (uint32_t i = cache[elem_pos].childs_offset; i < cache[elem_pos].childs_offset + cache[elem_pos].num_childs; i++) {
        if (i < cache[elem_pos].childs_offset + cache[elem_pos].num_childs - 1) {
            if (!(cache[i] < cache[i+1])) {
                error(LOG_WARNING, "Predict2 Cache: Missort!\n" );
                return -1;
            }
        }
        int res = validateNode(cache, i, size);
        if (res == -1) {
            return -1;
        }
        num_nodes += res;
    }
    return num_nodes;
}

template<class CacheElement> template<class Elem>
bool Predict2Cache<CacheElement>::validateCache(Elem* cache, size_t size) const
{
    if (cache == NULL) {
        error(LOG_WARNING, "Predict2 Cache: Shouldn't be triggered\n") ;
        return true;
    }
    if (size == 0) {
        error(LOG_WARNING, "Predict2 Cache: Cache is too small\n") ;
        return true;
    }
    if (validateNode(cache, 0, size) != (int)size) {
        error(LOG_WARNING, "Predict2 Cache: Wrong cache structure\n") ;
        return true;
    }
    return false;
}

template<class CacheElement>
bool Predict2Cache<CacheElement>::validateRawMap(unsigned char* rawmap, size_t size) const
{

    if (size < sizeof(predict2_cache_header)) {
        error(LOG_WARNING, "Predict2 Cache: Wayyyy tooo small: %lu bytes\n", size) ;
        return false;
    }

    predict2_cache_header* header = (predict2_cache_header *)rawmap ;

    size_t expected = sizeof(predict2_cache_header) +
        header->num_click_rows * sizeof(CacheElement) +
        header->num_pvc_rows * sizeof(CacheElement) +
        header->num_pcc_rows * sizeof(CacheElement) +
        header->num_click_throttle_rows * sizeof(p2_throttle_cache_element) +
        header->num_pv_conv_throttle_rows * sizeof(p2_throttle_cache_element) +
        header->num_pc_conv_throttle_rows * sizeof(p2_throttle_cache_element) +
        header->num_pub_class_rows * sizeof(p2_pub_class_element) +
        header->num_cpa_learn_cells * sizeof(Predict2LearnCell<cr_camp_conv_pearl_key>) +
        header->num_dcpm_learn_cells * sizeof(Predict2LearnCell<cr_camp_conv_pearl_key>) +
        header->num_cpc_learn_cells * sizeof(Predict2LearnCell<cr_pearl_key>) +
        header->num_dcpm_click_learn_cells * sizeof(Predict2LearnCell<cr_camp_pearl_key>) +
        header->num_section_pearl_cells * sizeof(p2_pearl_map_element) +
        header->num_site_pearl_cells * sizeof(p2_pearl_map_element) +
        header->num_vurl_pearl_cells * sizeof(p2_pearl_map_element) +
        header->num_pub_pearl_cells * sizeof(p2_pearl_map_element);
    int diff = int (size - expected);
    if (diff != 0) {
        error(LOG_WARNING, "Predict2 Cache: Cache is off by %d bytes\n", diff) ;
        return false ;
    }
    // versioning
    if (string(header->predict2_cache_version).find(string(PREDICT2_CACHE_VERSION)) != 0) {
        error(LOG_WARNING, "Predict2 Cache: Cache version %s != current %s\n",
              header->predict2_cache_version, PREDICT2_CACHE_VERSION) ;
        return false ;
    }

    //
    // Validate tree structure.
    //
    size_t offset = sizeof(predict2_cache_header);
    CacheElement* clickRows = (CacheElement *)(rawmap + offset);
    if (validateCache(clickRows, header->num_click_rows)) {
        return false;
    }

    offset += header->num_click_rows * sizeof(CacheElement);
    CacheElement* pvc_Rows = (CacheElement *)(rawmap + offset);
    if (validateCache(pvc_Rows, header->num_pvc_rows)) {
        return false;
    }

    offset += header->num_pvc_rows * sizeof(CacheElement);
    CacheElement* pcc_Rows = (CacheElement *)(rawmap + offset);
    if (validateCache(pcc_Rows, header->num_pcc_rows)) {
        return false;
    }

    //
    // Validate click throttle structure.
    //
    offset += header->num_pcc_rows * sizeof(CacheElement);
    p2_throttle_cache_element* clickThrottleRows = (p2_throttle_cache_element *)(rawmap + offset);
    if (validateCache(clickThrottleRows, header->num_click_throttle_rows)) {
        return false;
    }

    //
    // Validate conv throttle structure.
    //
    offset += header->num_click_throttle_rows * sizeof(p2_throttle_cache_element);
    p2_throttle_cache_element* pvcThrottleRows = (p2_throttle_cache_element *)(rawmap + offset);
    if (validateCache(pvcThrottleRows, header->num_pv_conv_throttle_rows)) {
        return false;
    }

    offset += header->num_pv_conv_throttle_rows * sizeof(p2_throttle_cache_element);
    p2_throttle_cache_element* pccThrottleRows = (p2_throttle_cache_element *)(rawmap + offset);
    if (validateCache(pccThrottleRows, header->num_pc_conv_throttle_rows)) {
        return false;
    }

    return true;
}

template<class CacheElement>
int Predict2Cache<CacheElement>::freeMap()
{
    if (fMap) {
        free(fMap);
        fMap = 0;

        // Free throttle budget trees.
        ThrottleMemPool::fPool->reset();
    }

    return 0;
}

template<class CacheElement>
bool Predict2Cache<CacheElement>::openMap(const string& qs)
{
    int fd = open(qs.c_str(), O_RDONLY);
    if (fd < 0) {
        int e = errno;
        error(LOG_ERR, "Predict2 Cache: Can't open '%s': %s\n",
              qs.c_str(), errno_string(e).c_str());
        return false;
    }
    struct stat statbuf ;
    if (fstat(fd, &statbuf)) {
        int e = errno;
        error(LOG_ERR, "Predict2 Cache: Can't stat '%s': %s\n",
              qs.c_str(), errno_string(e).c_str());
        close(fd);
        return false;
    }

    

    int mapSize = sizeof(char) * statbuf.st_size;
    unsigned char* new_map = static_cast<unsigned char*>(malloc(mapSize));
    //unsigned char* new_map = static_cast<unsigned char*>(malloc(19589934599));
    if (!new_map) {
        int e = errno;
        error(LOG_ERR, "Predict2 Cache malloc(%d) failed: %s\n",
            mapSize, errno_string(e).c_str());
        close(fd);
        return false;
    }

    int readSize = readall(fd, new_map, mapSize);
    close(fd);

    if (readSize != mapSize) {
        free(new_map);
        new_map = 0;
        error(LOG_ERR, "Predict2 Cache readall failed\n");
        return false;
    }

    if (!validateRawMap(new_map, statbuf.st_size)) {
        free(new_map);
        new_map = 0;
        error(LOG_ERR, "Predict2 Cache: New cache '%s' rejected\n",
              qs.c_str());
        return false;
    }

    //Predict2ScopedWriteLock lock(gPredict2Lock);

    this->freeMap() ;  //delete old map

    fMap = new_map ;
    //    cmpxchg(fMap, fMap, new_map);
    fMapLength = statbuf.st_size ;
    fHeader = (predict2_cache_header *)fMap ;
    fstream fdp2header("01_p2header.txt",ios::out);

    fdp2header<<"num_click_rows = "<<fHeader->num_click_rows<<endl;
    fdp2header<<"num_pvc_rows = "<<fHeader->num_pvc_rows<<endl;
    fdp2header<<"num_pcc_rows = "<<fHeader->num_pcc_rows<<endl;
    fdp2header<<"num_click_throttle_rows = "<<fHeader->num_click_throttle_rows<<endl;
    fdp2header<<"num_pv_conv_throttle_rows = "<<fHeader->num_pv_conv_throttle_rows<<endl;
    fdp2header<<"num_pc_conv_throttle_rows = "<<fHeader->num_pc_conv_throttle_rows<<endl;
    fdp2header<<"num_pub_class_rows = "<<fHeader->num_pub_class_rows<<endl;
    fdp2header<<"num_servers = "<<fHeader->num_servers<<endl;
    fdp2header<<"num_dcpm_learn_cells = "<<fHeader->num_dcpm_learn_cells<<endl;
    fdp2header<<"num_dcpm_click_learn_cells = "<<fHeader->num_dcpm_click_learn_cells<<endl;
    fdp2header<<"num_section_pearl_cells = "<<fHeader->num_section_pearl_cells<<endl;
    fdp2header<<"num_site_pearl_cells = "<<fHeader->num_site_pearl_cells<<endl;
    fdp2header<<"num_vurl_pearl_cells = "<<fHeader->num_vurl_pearl_cells<<endl;
    fdp2header<<"num_pub_pearl_cells = "<<fHeader->num_pub_pearl_cells<<endl;
    fdp2header<<"predict2_cache_version = "<<fHeader->predict2_cache_version<<endl;

    fdp2header.close();
    fClickRows = (CacheElement *)(fMap + sizeof(predict2_cache_header));

    fstream fdc("02_clicktree.txt",ios::out);
    for(int my_i=0;my_i<fHeader->num_click_rows;my_i++)
    {
	    fdc<<"[ "<<my_i<<" ] (key = "<<fClickRows[my_i].key<<" num_childs = "<<fClickRows[my_i].num_childs<<" childs_offset = "<<fClickRows[my_i].childs_offset<<"  prob = "<<fClickRows[my_i].prob<<" )"<<endl;
    }

   fdc.close();
    fPvcRows = (CacheElement *)(fMap + sizeof(predict2_cache_header) +
                                fHeader->num_click_rows * sizeof(CacheElement));

    fstream fdpvc("03_postviewconvtree.txt",ios::out);
    for(int my_i=0;my_i<fHeader->num_pvc_rows;my_i++)
    {
	    fdpvc<<"[ "<<my_i<<" ] (key = "<<fPvcRows[my_i].key<<" num_childs = "<<fPvcRows[my_i].num_childs<<" childs_offset = "<<fPvcRows[my_i].childs_offset<<"  prob = "<<fPvcRows[my_i].prob<<" )"<<endl;
    }
   fdpvc.close();
    fPccRows = (CacheElement *)(fMap + sizeof(predict2_cache_header) +
                                fHeader->num_click_rows * sizeof(CacheElement) +
                                fHeader->num_pvc_rows * sizeof(CacheElement) );
    fstream fdpcc("04_postclickconvtree.txt",ios::out);
    for(int my_i=0;my_i<fHeader->num_pcc_rows;my_i++)
    {
	    fdpcc<<"[ "<<my_i<<" ] (key = "<<fPccRows[my_i].key<<" num_childs = "<<fPccRows[my_i].num_childs<<" childs_offset = "<<fPccRows[my_i].childs_offset<<"  prob = "<<fPccRows[my_i].prob<<" )"<<endl;
    }
   fdpcc.close();

    //
    // Throttle caches.
    //
    fClickThrottleCache = (p2_throttle_cache_element*)((char*)fPccRows +
                                                       fHeader->num_pcc_rows *
                                                       sizeof(CacheElement));
    fstream fdctcache("05_clickthrottlecache.txt",ios::out);
    for(int my_i=0;my_i<fHeader->num_click_throttle_rows;my_i++)
    {
	    fdctcache<<"[ "<<my_i<<" ] (key = "<<fClickThrottleCache[my_i].key<<" num_childs = "<<fClickThrottleCache[my_i].num_childs<<" childs_offset = "<<fClickThrottleCache[my_i].childs_offset<<" success = "<<fClickThrottleCache[my_i].successes<<" )"<<endl;
    }
   fdctcache.close();
    fPVConvThrottleCache = (p2_throttle_cache_element*)((char*)fClickThrottleCache +
                                                        fHeader->num_click_throttle_rows *
                                                        sizeof(p2_throttle_cache_element));
    fstream fdpvctcache("06_postviewconvthrottlecache.txt",ios::out);
    for(int my_i=0;my_i<fHeader->num_pv_conv_throttle_rows;my_i++)
    {
	    fdpvctcache<<"[ "<<my_i<<" ] (key = "<<fPVConvThrottleCache[my_i].key<<" num_childs = "<<fPVConvThrottleCache[my_i].num_childs<<" childs_offset = "<<fPVConvThrottleCache[my_i].childs_offset<<" success = "<<fPVConvThrottleCache[my_i].successes<<" )"<<endl;
    }
   fdpvctcache.close();
    fPCConvThrottleCache = (p2_throttle_cache_element*)((char*)fPVConvThrottleCache +
                                                        fHeader->num_pv_conv_throttle_rows *
                                                        sizeof(p2_throttle_cache_element));
    fstream fdpcctcache("07_postclickconvthrottlecache.txt",ios::out);
    for(int my_i=0;my_i<fHeader->num_pc_conv_throttle_rows;my_i++)
    {
	    fdpcctcache<<"[ "<<my_i<<" ] (key = "<<fPCConvThrottleCache[my_i].key<<" num_childs = "<<fPCConvThrottleCache[my_i].num_childs<<" childs_offset = "<<fPCConvThrottleCache[my_i].childs_offset<<" success = "<<fPCConvThrottleCache[my_i].successes<<" )"<<endl;
    }
   fdpcctcache.close();

    fPubClassCache = (p2_pub_class_element*)((char*)fPCConvThrottleCache +
                                             fHeader->num_pc_conv_throttle_rows *
                                             sizeof(p2_throttle_cache_element));

    fstream fdpubclass("08_pubclasscache.txt",ios::out);
    for(int my_i=0;my_i<fHeader->num_pub_class_rows;my_i++)
    {
	    fdpubclass<<"[ "<<my_i<<" ] (pearl_id = "<<fPubClassCache[my_i].pearl_id<<" pub_class = "<<fPubClassCache[my_i].pub_class<<" )"<<endl;
    }
   fdpubclass.close();
    //
    // Learning caches.
    // 
    fCPALearnCache = (Predict2LearnCell<cr_camp_conv_pearl_key> *)((char*)fPubClassCache +
                                                                   fHeader->num_pub_class_rows *
                                                                   sizeof(p2_pub_class_element));
    fstream fdcpalearncache("09_cpalearncache.txt",ios::out);
    for(int my_i=0;my_i<fHeader->num_cpa_learn_cells;my_i++)
    {
	    fdcpalearncache<<"[ "<<my_i<<" ] (creative id = "<<fCPALearnCache[my_i].key.creative_id<<" campaign id = "<<fCPALearnCache[my_i].key.campaign_id<<" conversion id = "<<fCPALearnCache[my_i].key.conversion_id<<" pearl_id = "<<fCPALearnCache[my_i].key.pearl_id<<" learn prob = "<<fCPALearnCache[my_i].learn_prob<<" ) "<<endl;
    }
   fdcpalearncache.close();
    fDcpmLearnCache = (Predict2LearnCell<cr_camp_conv_pearl_key> *)((char*)fCPALearnCache +
                                                                    fHeader->num_cpa_learn_cells *
                                                                    sizeof(Predict2LearnCell<cr_camp_conv_pearl_key>));
    fstream fddcpmlearncache("10_dcpmlearncache.txt",ios::out);
    for(int my_i=0;my_i<fHeader->num_dcpm_learn_cells;my_i++)
    {
	    fddcpmlearncache<<"[ "<<my_i<<" ] (creative id = "<<fDcpmLearnCache[my_i].key.creative_id<<" campaign id = "<<fDcpmLearnCache[my_i].key.campaign_id<<" conversion id = "<<fDcpmLearnCache[my_i].key.conversion_id<<" pearl_id = "<<fDcpmLearnCache[my_i].key.pearl_id<<" learn prob = "<<fDcpmLearnCache[my_i].learn_prob<<" ) "<<endl;
    }
   fddcpmlearncache.close();
    fCpcLearnCache = (Predict2LearnCell<cr_pearl_key> *)((char*)fDcpmLearnCache +
                                                         fHeader->num_dcpm_learn_cells *
                                                         sizeof(Predict2LearnCell<cr_camp_conv_pearl_key>));
    fstream fdcpclearncache("11_cpclearncache.txt",ios::out);
    for(int my_i=0;my_i<fHeader->num_cpc_learn_cells;my_i++)
    {
	    fdcpclearncache<<"[ "<<my_i<<" ] (creative id = "<<fCpcLearnCache[my_i].key.creative_id<<" pearl_id = "<<fCpcLearnCache[my_i].key.pearl_id<<" learn prob = "<<fDcpmLearnCache[my_i].learn_prob<<" ) "<<endl;
    }
   fdcpclearncache.close();

    fDcpmClickLearnCache = (Predict2LearnCell<cr_camp_pearl_key> *)((char*)fCpcLearnCache +
                                                                    fHeader->num_cpc_learn_cells *
                                                                    sizeof(Predict2LearnCell<cr_pearl_key>));
    fstream fddcpmclearncache("12_dcpmclicklearncache.txt",ios::out);
    for(int my_i=0;my_i<fHeader->num_dcpm_click_learn_cells;my_i++)
    {
            fddcpmclearncache<<"[ "<<my_i<<" ] (creative id = "<<fDcpmClickLearnCache[my_i].key.creative_id<<" campaign id = "<<fDcpmClickLearnCache[my_i].key.campaign_id<<" pearl_id = "<<fDcpmClickLearnCache[my_i].key.pearl_id<<" learn prob = "<<fDcpmClickLearnCache[my_i].learn_prob<<" ) "<<endl;
    }
   fddcpmclearncache.close();
    //
    // Pearl map
    //
    fSectionPearlCache = (p2_pearl_map_element *)((char*)fDcpmClickLearnCache +
                                                  fHeader->num_dcpm_click_learn_cells *
                                                  sizeof(p2_pearl_map_element));
    fstream fdsectionpearlcache("13_sectionpearlcache.txt",ios::out);
    for(int my_i=0;my_i<fHeader->num_section_pearl_cells;my_i++)
    {
            fdsectionpearlcache<<"[ "<<my_i<<" ] (key = "<<fSectionPearlCache[my_i].key<<" pearl_id = "<<fSectionPearlCache[my_i].pearl_id<<" ) "<<endl;
    }
    fdsectionpearlcache.close();
    fSitePearlCache = (p2_pearl_map_element *)((char*)fSectionPearlCache +
                                               fHeader->num_section_pearl_cells *
                                               sizeof(p2_pearl_map_element));
    fstream fdsitepearlcache("14_sitepearlcache.txt",ios::out);
    for(int my_i=0;my_i<fHeader->num_site_pearl_cells;my_i++)
    {
            fdsitepearlcache<<"[ "<<my_i<<" ] (key = "<<fSitePearlCache[my_i].key<<" pearl_id = "<<fSitePearlCache[my_i].pearl_id<<" ) "<<endl;
    }
   fdsitepearlcache.close();
    fVurlPearlCache = (p2_pearl_map_element *)((char*)fSitePearlCache +
                                               fHeader->num_site_pearl_cells *
                                               sizeof(p2_pearl_map_element));
    fstream fdvurlpearlcache("15_vurlpearlcache.txt",ios::out);
    for(int my_i=0;my_i<fHeader->num_vurl_pearl_cells;my_i++)
    {
            fdvurlpearlcache<<"[ "<<my_i<<" ] (key = "<<fVurlPearlCache[my_i].key<<" pearl_id = "<<fVurlPearlCache[my_i].pearl_id<<" ) "<<endl;
    }
   fdvurlpearlcache.close();
    fPubPearlCache = (p2_pearl_map_element *)((char*)fVurlPearlCache +
                                              fHeader->num_vurl_pearl_cells *
                                              sizeof(p2_pearl_map_element));
    fstream fdpubpearlcache("16_pubpearlcache.txt",ios::out);
    for(int my_i=0;my_i<fHeader->num_pub_pearl_cells;my_i++)
    {
            fdpubpearlcache<<"[ "<<my_i<<" ] (key = "<<fPubPearlCache[my_i].key<<" pearl_id = "<<fPubPearlCache[my_i].pearl_id<<" ) "<<endl;
    }
   fdpubpearlcache.close(); 
    //
    // Create new budget trees for p2 throttle.
    //
    PoolAlloc2<ThrottleBudgetTree, ThrottleMemPool> throttle_alloc;
    fPvcThrottleBudget = throttle_alloc.allocate(1, 0);
    throttle_alloc.construct(fPvcThrottleBudget, ThrottleBudgetTree());
    fPccThrottleBudget = throttle_alloc.allocate(1, 0);
    throttle_alloc.construct(fPccThrottleBudget, ThrottleBudgetTree());
    fClickThrottleBudget = throttle_alloc.allocate(1, 0);
    throttle_alloc.construct(fClickThrottleBudget, ThrottleBudgetTree());

    return true;
}

template<class CacheElement>
void Predict2Cache<CacheElement>::preprocessKey(predict_cache_key& predict_key) const
{
    // Populate pub_class field
    predict_key.pub_class = 0;
    if (fHeader->num_pub_class_rows != 0) {
        p2_pub_class_element pub_key;
        pub_key.pearl_id = predict_key.pearl_id;
        p2_pub_class_element* pub_class = lower_bound(fPubClassCache, fPubClassCache +
                                                      fHeader->num_pub_class_rows, pub_key);
        if (pub_class != fPubClassCache + fHeader->num_pub_class_rows &&
            pub_class->pearl_id == predict_key.pearl_id) {
            predict_key.pub_class = pub_class->pub_class;
        }
    }
}

template<class CacheElement>
bool Predict2Cache<CacheElement>::checkClickBudget(const predict_cache_key& predict_key,
                                                   int& throttle_status) const
{
    throttle_budget_element data;
    ThrottleBudgetTree* currentNode = fClickThrottleBudget;
    throttle_status = THROTTLE_CLICK_DECOMPOSITIONS_NUM;

    for (int i = THROTTLE_CLICK_DECOMPOSITIONS_NUM - 1; i >= 0; i--) {
        data.key = Predict2Utils::getClickThrottleKey(predict_key, i);
        typename ThrottleBudgetTree::iterator child = currentNode->find(data);
        if (child == currentNode->end()) {
            break;
        }
        if ((child->get())->budget < 0.0) {
            throttle_status = i;
            return false;
        }
        currentNode = &(*child);
    }
    return true;
}

template<class CacheElement>
bool Predict2Cache<CacheElement>::checkPvcBudget(const predict_cache_key& predict_key,
                                                 int& throttle_status) const
{
    throttle_budget_element data;
    ThrottleBudgetTree* currentNode = fPvcThrottleBudget;
    throttle_status = THROTTLE_PVC_DECOMPOSITIONS_NUM;

    for (int i = THROTTLE_PVC_DECOMPOSITIONS_NUM  - 1; i >= 0; i--) {
        data.key = Predict2Utils::getPVCThrottleKey(predict_key, i);
        typename ThrottleBudgetTree::iterator child = currentNode->find(data);
        if (child == currentNode->end()) {
            break;
        }
        if ((child->get())->budget < 0.0) {
            throttle_status = i;
            return false;
        }
        currentNode = &(*child);
    }
    return true;
}

template<class CacheElement>
bool Predict2Cache<CacheElement>::checkPccBudget(const predict_cache_key& predict_key,
                                                 int& throttle_status) const
{
    throttle_budget_element data;
    ThrottleBudgetTree* currentNode = fPccThrottleBudget;
    throttle_status = THROTTLE_PCC_DECOMPOSITIONS_NUM;

    for (int i = THROTTLE_PCC_DECOMPOSITIONS_NUM  - 1; i >= 0; i--) {
        data.key = Predict2Utils::getPCCThrottleKey(predict_key, i);
        typename ThrottleBudgetTree::iterator child = currentNode->find(data);
        if (child == currentNode->end()) {
            break;
        }
        if ((child->get())->budget < 0.0) {
            throttle_status = i;
            return false;
        }
        currentNode = &(*child);
    }
    return true;
}

template<class CacheElement>
float Predict2Cache<CacheElement>::getClickProb(predict_cache_key& predict_key,
                                                const int& frequency_bucket,
                                                const int& recency_bucket,
                                                bool checkBudget, int& throttle_status,
                                                Predict2Stats& predict2Stats) const
{
    if (fMap == NULL) {
        return -1.0 ;
    }
    preprocessKey(predict_key);
    CacheElement key;
    int i;
    CacheElement* predict_node = fClickRows;//DUMB
    for (i = INERTIAL_CLICK_PLUS_DECOMPOSITIONS_NUM - 1; i >= 0; i--) {
        try{
            key.key = Predict2Utils::getClickKey(predict_key, i);
        } catch (logic_error& err) {
            error(LOG_WARNING, "%s\n", err.what());
            return -1.0;
        }
        CacheElement* child_node = lower_bound(fClickRows + predict_node->childs_offset,
                                               fClickRows + predict_node->childs_offset +
                                               predict_node->num_childs, key);
        if (child_node == fClickRows + predict_node->childs_offset + predict_node->num_childs) {
            break;
        }
        if (child_node->key != key.key) {
            break;
        }
        predict_node = child_node;
    }
    float prob = predict_node->prob;
#ifdef P2_PPROB_OUTPUT
    cout << "click: " << i + 1 << ";prob " << predict_node->prob << ";prob with mod " << predict_node->prob*Predict2Utils::getModifier(frequency_bucket, recency_bucket) << ";key " << key.key << " freq " << frequency_bucket << " rec " << recency_bucket << endl;
#endif

    predict2Stats.lastLevelClickPlus = i + 1;

    if (checkBudget) {
        // Check throttle budget
        try {
            if (!checkClickBudget(predict_key, throttle_status)) {
                prob = 0.0;

#ifdef P2_PPROB_OUTPUT
                cout << "Click budget exceeded, creative_id = " << predict_key.creative_id << endl;
#endif
            }
        } catch (logic_error& err) {
            error(LOG_WARNING, "%s\n", err.what());
            return -1.0;
        }
    } else {
        // Set throttle status to a defined value.
        throttle_status = -1;
    }

    return prob * Predict2Utils::getModifier(frequency_bucket, recency_bucket);
}

template<class CacheElement>
float Predict2Cache<CacheElement>::getConvProb(predict_cache_key& predict_key,
                                               bool is_post_view,
                                               const int& frequency_bucket,
                                               const int& recency_bucket, bool checkBudget, int& throttle_status,
                                               Predict2Stats& predict2Stats) const
{
    if (fMap == NULL) {
        return -1.0 ;
    }
    preprocessKey(predict_key);
    CacheElement key;
    if ( is_post_view ) {
        CacheElement* predict_node = fPvcRows;//DYNAMIC_PVC_DUMB
        int i;
        for (i = INERTIAL_PVC_DECOMPOSITIONS_NUM - 1; i >= 0; i--) {
            try{
                key.key = Predict2Utils::getPVCKey(predict_key, i);
            } catch (logic_error& err) {
                error(LOG_WARNING, "%s\n", err.what());
                return -1.0;
            }
            CacheElement* child_node = lower_bound(fPvcRows + predict_node->childs_offset,
                                                   fPvcRows + predict_node->childs_offset +
                                                   predict_node->num_childs, key);
            if (child_node == fPvcRows + predict_node->childs_offset + predict_node->num_childs) {
                break;
            }
            if (child_node->key != key.key) {
                break;
            }
            predict_node = child_node;
        }
        float prob = predict_node->prob;
#ifdef P2_PPROB_OUTPUT
        cout << "pv_conv: lvl " << i + 1 << "; prob " << prob << "; key " << key.key << endl;
#endif

        predict2Stats.lastLevelPVConv = i + 1;

        if (checkBudget) {
            //check throttle budget
            try {
                if (!checkPvcBudget(predict_key, throttle_status)) {
                    prob = 0.0;

#ifdef P2_PPROB_OUTPUT
                    cout << "PV Conv budget exceeded, conv_id = " << predict_key.conversion_id << endl;
#endif
                }
            } catch (logic_error& err) {
                error(LOG_WARNING, "%s\n", err.what());
                return -1.0;
            }
        } else {
            // Set throttle status to a defined value.
            throttle_status = -1;
        }
        return prob;
    } else {
        CacheElement* predict_node = fPccRows;//DYNAMIC_PCC_DUMB
        int i;
        for (i = INERTIAL_PCC_DECOMPOSITIONS_NUM - 1; i >= 0; i--) {
            try{
                key.key = Predict2Utils::getPCCKey(predict_key, i);
            } catch (logic_error& err) {
                error(LOG_WARNING, "%s\n",  err.what());
                return -1.0;
            }
            CacheElement* child_node = lower_bound(fPccRows + predict_node->childs_offset,
                                                   fPccRows + predict_node->childs_offset +
                                                   predict_node->num_childs, key);
            if (child_node == fPccRows + predict_node->childs_offset + predict_node->num_childs) {
                break;
            }
            if (child_node->key != key.key) {
                break;
            }
            predict_node = child_node;
        }
        //
        // Note that we do not check the click throttle budget, 
        // as the conversion throttle budget is checked below.
        // As a consequence, we can quietly ignore the value of
        // throttle_status here.
        //
        float prob = predict_node->prob * this->getClickProb(predict_key,
                                                             frequency_bucket,
                                                             recency_bucket,
                                                             false, throttle_status,
                                                             predict2Stats);
#ifdef P2_PPROB_OUTPUT
        cout << "pc_conv: " << i + 1 << " prob " << prob << " pc_prob " << predict_node->prob << " click_prob " << prob / predict_node->prob << " key " << key.key << " freq " << frequency_bucket << " rec " << recency_bucket << endl;
#endif

        predict2Stats.lastLevelPCConv = i + 1;

        if (prob < 0) {
            return -1.0;
        }
        if (checkBudget) {
            //check throttle budget
            try {
                if (!checkPccBudget(predict_key, throttle_status)) {
                    prob = 0.0;

#ifdef P2_PPROB_OUTPUT
                    cout << "PC Conv budget exceeded, conv_id = " << predict_key.conversion_id << endl;
#endif
                }
            } catch (logic_error& err) {
                error(LOG_WARNING, "%s\n", err.what());
                return -1.0;
            }
        } else {
            // Set throttle status to a defined value.
            throttle_status = -1;
        }
        return prob;
    }
}

// Non-constant method because it modifies the click throttle budget tree.
template<class CacheElement>
bool Predict2Cache<CacheElement>::registerClickImpression(predict_cache_key& predict_key,
                                                          const int& frequency_bucket,
                                                          const int& recency_bucket,
                                                          const double& CPC,
                                                          Predict2Stats& predict2Stats)
{
    try {
        throttle_budget_element data;
        int throttle_status;
        const float budgetDecrement = getClickProb(predict_key, frequency_bucket, recency_bucket,
                                                   false, throttle_status, predict2Stats) * CPC;

        ThrottleBudgetTree* currentNode = fClickThrottleBudget;
        (*currentNode->get()).budget = 0.0; //DUMB

        int i;
        //
        // For layers of the predict2 cache key already found in the budget tree,
        // merely update their corresponding budgets.
        //
        for (i = THROTTLE_CLICK_DECOMPOSITIONS_NUM  - 1; i >= 0; i--) {
            data.key = Predict2Utils::getClickThrottleKey(predict_key, i);
            typename ThrottleBudgetTree::iterator child = currentNode->find(data);
            if (child == currentNode->end()) {
                break;
            }
            (child->get())->budget -= budgetDecrement;
            currentNode = &(*child);
        }

        //
        // Insert the remaining layers in the budget tree.
        //
        for (; i >=0 ; i--) {
            data.key = Predict2Utils::getClickThrottleKey(predict_key, i);

            //
            // Look for the corresponding node in the throttle tree.
            //
            bool isFound = true;
            p2_throttle_cache_element* node = fClickThrottleCache; //DUMB
            for (int j = THROTTLE_CLICK_DECOMPOSITIONS_NUM - 1; j >= i; j--) {
                p2_throttle_cache_element key;

                key.key = Predict2Utils::getClickThrottleKey(predict_key, j);
                p2_throttle_cache_element* child_node = lower_bound(fClickThrottleCache + node->childs_offset,
                                                                    fClickThrottleCache + node->childs_offset +
                                                                    node->num_childs, key);
                if (child_node == fClickThrottleCache + node->childs_offset + node->num_childs) {
                    isFound = false;
                    break;
                }
                if (child_node->key != key.key) {
                    isFound = false;
                    break;
                }
                node = child_node;
            }

            //
            // Create a new node in the budget tree. Assign it an initial budget.
            //
            uint32_t successes;
            if (isFound) {
                successes = node->successes;
            } else {
                successes = 0;
            }

            // We always take at least 10 clicks into consideration.
            uint32_t nClicks;
            if (successes < 10) {
                nClicks = 10;
            } else {
                nClicks = successes;
            }
            data.budget = min(1.0, max(CPC, 0.01)) * (float)(nClicks + 1) / (float)(fHeader->num_servers);
            data.budget -= budgetDecrement;
            currentNode = &(*(currentNode->insert(data)));
        }
    } catch (logic_error& err) {
        error(LOG_WARNING, "%s\n", err.what());
        return false;
    }
    return true;
}

// Non-constant method because it modifies throttle budget trees.
template<class CacheElement>
bool Predict2Cache<CacheElement>::registerConvImpression(predict_cache_key& predict_key,
                                                         bool is_post_view,
                                                         const int& frequency_bucket,
                                                         const int& recency_bucket,
                                                         const double& CPA,
                                                         Predict2Stats& predict2Stats)
{
    try {
        if (is_post_view) {
            registerPvcImpression(predict_key, frequency_bucket, recency_bucket, CPA, predict2Stats);
        } else {
            registerPccImpression(predict_key, frequency_bucket, recency_bucket, CPA, predict2Stats);
        }
    } catch (logic_error& err) {
        error(LOG_WARNING, "%s\n", err.what());
        return false;
    }
    return true;
}

template<class CacheElement>
void Predict2Cache<CacheElement>::registerPvcImpression(predict_cache_key& predict_key,
                                                        const int& frequency_bucket,
                                                        const int& recency_bucket,
                                                        const double& CPA,
                                                        Predict2Stats& predict2Stats)
{
    throttle_budget_element data;
    int throttle_status;
    const float budgetDecrement = getConvProb(predict_key, true, frequency_bucket, recency_bucket,
                                              false, throttle_status, predict2Stats) * CPA;

    ThrottleBudgetTree* currentNode = fPvcThrottleBudget;
    (*currentNode->get()).budget = 0.0; //DUMB

    int i;
    //
    // For layers of the predict2 cache key already found in the budget tree,
    // merely update their corresponding budgets.
    //
    for (i = THROTTLE_PVC_DECOMPOSITIONS_NUM - 1; i >= 0; i--) {
        data.key = Predict2Utils::getPVCThrottleKey(predict_key, i);
        typename ThrottleBudgetTree::iterator child = currentNode->find(data);
        if (child == currentNode->end()) {
            break;
        }
        (child->get())->budget -= budgetDecrement;
        currentNode = &(*child);
    }

    //
    // Insert the remaining layers in the budget tree.
    //
    for (; i >=0 ; i--) {
        data.key = Predict2Utils::getPVCThrottleKey(predict_key, i);

        //
        // Look for the corresponding node in the throttle tree.
        //
        bool isFound = true;
        p2_throttle_cache_element* node = fPVConvThrottleCache; //DUMB
        for (int j = THROTTLE_PVC_DECOMPOSITIONS_NUM - 1; j >= i; j--) {
            p2_throttle_cache_element key;

            key.key = Predict2Utils::getPVCThrottleKey(predict_key, j);
            p2_throttle_cache_element* child_node = lower_bound(fPVConvThrottleCache + node->childs_offset,
                                                                fPVConvThrottleCache + node->childs_offset +
                                                                node->num_childs, key);
            if (child_node == fPVConvThrottleCache + node->childs_offset + node->num_childs) {
                isFound = false;
                break;
            }
            if (child_node->key != key.key) {
                isFound = false;
                break;
            }
            node = child_node;
        }

        //
        // Create a new node in the budget tree. Assign it an initial budget.
        //
        uint32_t successes;
        if (isFound) {
            successes = node->successes;
        } else {
            successes = 0;
        }
        data.budget = min(10.0, max(CPA, 0.1)) * (float)(successes + 1) / (float)(fHeader->num_servers);
        data.budget -= budgetDecrement;
        currentNode = &(*(currentNode->insert(data)));
    }
}

template<class CacheElement>
void Predict2Cache<CacheElement>::registerPccImpression(predict_cache_key& predict_key,
                                                        const int& frequency_bucket,
                                                        const int& recency_bucket,
                                                        const double& CPA,
                                                        Predict2Stats& predict2Stats)
{
    throttle_budget_element data;
    int throttle_status;
    const float budgetDecrement = getConvProb(predict_key, false, frequency_bucket, recency_bucket,
                                              false, throttle_status, predict2Stats) * CPA;

    ThrottleBudgetTree* currentNode = fPccThrottleBudget;
    (*currentNode->get()).budget = 0.0; //DUMB

    int i;
    //
    // For layers of the predict2 cache key already found in the budget tree,
    // merely update their corresponding budgets.
    //
    for (i = THROTTLE_PCC_DECOMPOSITIONS_NUM - 1; i >= 0; i--) {
        data.key = Predict2Utils::getPCCThrottleKey(predict_key, i);
        typename ThrottleBudgetTree::iterator child = currentNode->find(data);
        if (child == currentNode->end()) {
            break;
        }
        (child->get())->budget -= budgetDecrement;
        currentNode = &(*child);
    }

    //
    // Insert the remaining layers in the budget tree.
    //
    for (; i >=0 ; i--) {
        data.key = Predict2Utils::getPCCThrottleKey(predict_key, i);

        //
        // Look for the corresponding node in the throttle tree.
        //
        bool isFound = true;
        p2_throttle_cache_element* node = fPCConvThrottleCache; //DUMB
        for (int j = THROTTLE_PCC_DECOMPOSITIONS_NUM - 1; j >= i; j--) {
            p2_throttle_cache_element key;

            key.key = Predict2Utils::getPCCThrottleKey(predict_key, j);
            p2_throttle_cache_element* child_node = lower_bound(fPCConvThrottleCache + node->childs_offset,
                                                                fPCConvThrottleCache + node->childs_offset + node->num_childs, key);
            if (child_node == fPCConvThrottleCache + node->childs_offset + node->num_childs) {
                isFound = false;
                break;
            }
            if (child_node->key != key.key) {
                isFound = false;
                break;
            }
            node = child_node;
        }

        //
        // Create a new node in the budget tree. Assign it an initial budget.
        //
        uint32_t successes;
        if (isFound) {
            successes = node->successes;
        } else {
            successes = 0;
        }
        data.budget = min(10.0, max(CPA, 0.1)) * (float)(successes + 1) / (float)(fHeader->num_servers);
        data.budget -= budgetDecrement;
        currentNode = &(*(currentNode->insert(data)));
    }
}

template<class CacheElement>
float Predict2Cache<CacheElement>::getClickDumbProb() const 
{
    if (fMap == NULL) {
        return -1.0 ;
    }
    CacheElement* predict_node = fClickRows;//DUMB
    return predict_node->prob;
}

template<class CacheElement>
float Predict2Cache<CacheElement>::getConvDumbProb(bool is_post_view) const
{
    if (fMap == NULL) {
        return -1.0 ;
    }
    if (is_post_view) {
        CacheElement* predict_node = fPvcRows;//DYNAMIC_PVC_DUMB
        return predict_node->prob;
    } else {
        CacheElement* predict_node = fPccRows;//DYNAMIC_PCC_DUMB
        float prob = predict_node->prob * getClickDumbProb();
        return prob;
    }
}

template<class CacheElement>  
float Predict2Cache<CacheElement>::getCPALearnProb(const uint32_t section_id,
                                                   const site_id_t site_id,
                                                   const uint32_t vurl_id,
                                                   const entity_id_t publisher_id,
                                                   const creative_id_t creative_id,
                                                   const campaign_id_t campaign_id,
                                                   const conversion_id_t conversion_id,
                                                   enum_learning_status& learn_status) const
{
    if (fMap == NULL) {
        learn_status = P2_LEARN_NOT_APPLICABLE;
        return -1.0;
    }
    //check if pearl != 0
    uint64_t pearl_id = getPearl(section_id, site_id, vurl_id, publisher_id);
    if (pearl_id == 0) {
        //pearl_id = 0 => no learning
        learn_status = P2_LEARN_NOT_APPLICABLE;
        return -1.0;
    }
    //get learn_prob
    Predict2LearnCell<cr_camp_conv_pearl_key> key;
    key.key.creative_id = creative_id;
    key.key.campaign_id = campaign_id;
    key.key.conversion_id = conversion_id;
    key.key.pearl_id = pearl_id;
    Predict2LearnCell<cr_camp_conv_pearl_key>* learn_cell = lower_bound(fCPALearnCache,
                                                                        fCPALearnCache +
                                                                        fHeader->num_cpa_learn_cells,
                                                                        key);
    if (learn_cell == fCPALearnCache + fHeader->num_cpa_learn_cells ||
        *learn_cell < key || key < *learn_cell) {
        //no info about cell => treat as new
        learn_status = P2_LEARN_NEW;
        return -1.0;
    }
    if (learn_cell->learn_prob < 0) {
        learn_status = P2_LEARN_OPTIMIZED;
        return -1.0;
    } else {
        learn_status = P2_LEARN_LEARNING;
        return learn_cell->learn_prob;
    }
}

template<class CacheElement>  
float Predict2Cache<CacheElement>::getDcpmLearnProb(const uint32_t section_id,
                                                    const site_id_t site_id,
                                                    const uint32_t vurl_id,
                                                    const entity_id_t publisher_id,
                                                    const creative_id_t creative_id,
                                                    const campaign_id_t campaign_id,
                                                    const conversion_id_t conversion_id,
                                                    enum_learning_status& learn_status) const
{
    if (fMap == NULL) {
        learn_status = P2_LEARN_NOT_APPLICABLE;
        return -1.0;
    }
    //check if pearl != 0
    uint64_t pearl_id = getPearl(section_id, site_id, vurl_id, publisher_id);
    if (pearl_id == 0) {
        //pearl_id = 0 => no learning
        learn_status = P2_LEARN_NOT_APPLICABLE;
        return -1.0;
    }
    //get learn_prob
    Predict2LearnCell<cr_camp_conv_pearl_key> key;
    key.key.creative_id = creative_id;
    key.key.campaign_id = campaign_id;
    key.key.conversion_id = conversion_id;
    key.key.pearl_id = pearl_id;
    Predict2LearnCell<cr_camp_conv_pearl_key>* learn_cell = lower_bound(fDcpmLearnCache,
                                                                        fDcpmLearnCache +
                                                                        fHeader->num_dcpm_learn_cells,
                                                                        key);
    if (learn_cell == fDcpmLearnCache + fHeader->num_dcpm_learn_cells ||
        *learn_cell < key || key < *learn_cell) {
        //no info about cell => treat as new
        learn_status = P2_LEARN_NEW;
        return -1.0;
    }
    if (learn_cell->learn_prob < 0) {
        learn_status = P2_LEARN_OPTIMIZED;
        return -1.0;
    } else {
        learn_status = P2_LEARN_LEARNING;
        return learn_cell->learn_prob;
    }
}

template<class CacheElement>  
float Predict2Cache<CacheElement>::getDcpmClickLearnProb(const uint32_t section_id,
                                                         const site_id_t site_id,
                                                         const uint32_t vurl_id,
                                                         const entity_id_t publisher_id,
                                                         const creative_id_t creative_id,
                                                         const campaign_id_t campaign_id,
                                                         enum_learning_status& learn_status) const
{
    if (fMap == NULL) {
        learn_status = P2_LEARN_NOT_APPLICABLE;
        return -1.0;
    }
    //check if pearl != 0
    uint64_t pearl_id = getPearl(section_id, site_id, vurl_id, publisher_id);
    if (pearl_id == 0) {
        //pearl_id = 0 => no learning
        learn_status = P2_LEARN_NOT_APPLICABLE;
        return -1.0;
    }
    //get learn_prob
    Predict2LearnCell<cr_camp_pearl_key> key;
    key.key.creative_id = creative_id;
    key.key.campaign_id = campaign_id;
    key.key.pearl_id = pearl_id;
    Predict2LearnCell<cr_camp_pearl_key>* learn_cell = lower_bound(fDcpmClickLearnCache,
                                                                   fDcpmClickLearnCache +
                                                                   fHeader->num_dcpm_click_learn_cells,
                                                                   key);
    if (learn_cell == fDcpmClickLearnCache + fHeader->num_dcpm_click_learn_cells ||
        *learn_cell < key || key < *learn_cell) {
        //no info about cell => treat as new
        learn_status = P2_LEARN_NEW;
        return -1.0;
    }
    if (learn_cell->learn_prob < 0) {
        learn_status = P2_LEARN_OPTIMIZED;
        return -1.0;
    } else {
        learn_status = P2_LEARN_LEARNING;
        return learn_cell->learn_prob;
    }
}

template<class CacheElement>  
float Predict2Cache<CacheElement>::getCpcLearnProb(const uint32_t section_id,
                                                   const site_id_t site_id,
                                                   const uint32_t vurl_id,
                                                   const entity_id_t publisher_id,
                                                   const creative_id_t creative_id,
                                                   enum_learning_status& learn_status) const
{
    if (fMap == NULL) {
        learn_status = P2_LEARN_NOT_APPLICABLE;
        return -1.0;
    }
    //check if pearl != 0
    uint64_t pearl_id = getPearl(section_id, site_id, vurl_id, publisher_id);
    if (pearl_id == 0) {
        //pearl_id = 0 => no learning
        learn_status = P2_LEARN_NOT_APPLICABLE;
        return -1.0;
    }
    // Get learn_prob
    Predict2LearnCell<cr_pearl_key> key;
    key.key.creative_id = creative_id;
    key.key.pearl_id = pearl_id;
    Predict2LearnCell<cr_pearl_key>* learn_cell = lower_bound(fCpcLearnCache,
                                                              fCpcLearnCache +
                                                              fHeader->num_cpc_learn_cells,
                                                              key);
    if (learn_cell == fCpcLearnCache + fHeader->num_cpc_learn_cells ||
        *learn_cell < key || key < *learn_cell) {
        // No info about cell => treat as new
        learn_status = P2_LEARN_NEW;
        return -1.0;
    }
    if (learn_cell->learn_prob < 0) {
        learn_status = P2_LEARN_OPTIMIZED;
        return -1.0;
    } else {
        learn_status = P2_LEARN_LEARNING;
        return learn_cell->learn_prob;
    }
}

template<class CacheElement>  
uint64_t Predict2Cache<CacheElement>::getPearl(const uint32_t section_id,
                                               const site_id_t site_id,
                                               const uint32_t vurl_id,
                                               entity_id_t publisher_id) const
{
    p2_pearl_map_element key, *pearl;

    //try using section pearl
    key.key = section_id;
    pearl = lower_bound(fSectionPearlCache, fSectionPearlCache + 
                        fHeader->num_section_pearl_cells, key);
    if (pearl != fSectionPearlCache + fHeader->num_section_pearl_cells &&
        pearl->key == section_id) {
        return pearl->pearl_id;
    }

    //try using site pearl
    key.key = site_id;
    pearl = lower_bound(fSitePearlCache, fSitePearlCache +
                        fHeader->num_site_pearl_cells, key);
    if (pearl != fSitePearlCache + fHeader->num_site_pearl_cells &&
        pearl->key == site_id) {
        return pearl->pearl_id;
    }

    //try using vurl pearl
    key.key = vurl_id;
    pearl = lower_bound(fVurlPearlCache, fVurlPearlCache +
                        fHeader->num_vurl_pearl_cells, key);
    if (pearl != fVurlPearlCache + fHeader->num_vurl_pearl_cells &&
        pearl->key == vurl_id) {
        return pearl->pearl_id;
    }

    //try using publisher pearl
    key.key = publisher_id;
    pearl = lower_bound(fPubPearlCache, fPubPearlCache +
                        fHeader->num_pub_pearl_cells, key);
    if (pearl != fPubPearlCache + fHeader->num_pub_pearl_cells &&
        pearl->key == publisher_id) {
        return pearl->pearl_id;
    }

    return 0; //default pearl
}

template<class CacheElement>
bool Predict2Cache<CacheElement>::isPearlified(const uint32_t section_id,
                                               const site_id_t site_id,
                                               const uint32_t vurl_id,
                                               const entity_id_t publisher_id) const
{
    return getPearl(section_id, site_id, vurl_id, publisher_id) != 0;
}



	
	
int main(int argc,char ** argv)
{
		if(argc<2)
		{
			cout<<"Usage : "<<argv[0]<<" <filename>"<<endl;
			return 0;
		}
		cout<<"uint64_t "<<sizeof(uint64_t)<<endl;
		string s(argv[1]);
		Predict2Cache<p2_cache_element> gPC;
		if(!gPC.openMap(s))
		{
			cout<<"This program donot validate the cache so make sure to give correct cache"<<endl;
			return 0;
		}
		gPC.freeMap();
		
		return 0;
}



