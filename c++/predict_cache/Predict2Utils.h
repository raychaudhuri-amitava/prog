/* -*- mode: c++; c-basic-offset: 4; indent-tabs-mode: nil; tab-width: 4 -*- */
/* vi: set expandtab shiftwidth=4 tabstop=4: */
/* RMHEADER
 */

#ifndef __Include_PREDICT2UTILS //Shared predict2 types and methods
#define __Include_PREDICT2UTILS

#ifdef SKELETOR_ENABLED
  #include <rmasutil.h>
#else
  #include "ObjectIdType.h"
#endif

#include <stdint.h>
#include <cmath>
#include <cfloat>
#include <exception>
#include <stdexcept>

#include <sstream>

using namespace std;

#define PREDICT2_CACHE_VERSION "Revision: 19961, P2 Release: 19"

//Used by Builder & used by cache
enum enum_dynamic_click_plus_predictor_type
{
    INERTIAL_CLICK_PLUS_CR = 0,
    INERTIAL_CLICK_PLUS_AGE,
    INERTIAL_CLICK_PLUS_GENDER,
    INERTIAL_CLICK_PLUS_PEARL,
    INERTIAL_CLICK_PLUS_ADV,
    INERTIAL_CLICK_PLUS_SIZE,
    INERTIAL_CLICK_PLUS_FS,
    INERTIAL_CLICK_PLUS_PUB_CLASS,
    INERTIAL_CLICK_PLUS_DECOMPOSITIONS_NUM  //Should be last
};

enum enum_dynamic_pvc_predictor_type
{
    INERTIAL_PVC_CR = 0,
    INERTIAL_PVC_SIZE,
    INERTIAL_PVC_AGE,
    INERTIAL_PVC_GENDER,
    INERTIAL_PVC_PEARL,
    INERTIAL_PVC_FS,
    INERTIAL_PVC_CAMP,
    INERTIAL_PVC_CONV,
    INERTIAL_PVC_ADV,
    INERTIAL_PVC_CONVTYPE,
    INERTIAL_PVC_PUB_CLASS,
    INERTIAL_PVC_DECOMPOSITIONS_NUM  //Should be last
};

enum enum_dynamic_pcc_predictor_type
{
    INERTIAL_PCC_CR = 0,
    INERTIAL_PCC_SIZE,
    INERTIAL_PCC_AGE,
    INERTIAL_PCC_GENDER,
    INERTIAL_PCC_PEARL,
    INERTIAL_PCC_CAMP,
    INERTIAL_PCC_CONV,
    INERTIAL_PCC_ADV,
    INERTIAL_PCC_CONVTYPE,
    INERTIAL_PCC_PUB_CLASS,
    INERTIAL_PCC_DECOMPOSITIONS_NUM  //Should be last
};

enum enum_throttle_click_layer_type
{
    THROTTLE_CLICK_CR = 0,
    THROTTLE_CLICK_PEARL,
    THROTTLE_CLICK_CAMP,
    THROTTLE_CLICK_DECOMPOSITIONS_NUM  //Should be last
};

enum enum_throttle_pvc_layer_type
{
    THROTTLE_PVC_CR = 0,
    THROTTLE_PVC_PEARL,
    THROTTLE_PVC_CAMP,
    THROTTLE_PVC_CONV,
    THROTTLE_PVC_DECOMPOSITIONS_NUM  //Should be last
};

enum enum_throttle_pcc_layer_type
{
    THROTTLE_PCC_CR = 0,
    THROTTLE_PCC_PEARL,
    THROTTLE_PCC_CAMP,
    THROTTLE_PCC_CONV,
    THROTTLE_PCC_DECOMPOSITIONS_NUM  //Should be last
};

//Used by Builder & predict_test
struct creative_attr_t
{
    creative_attr_t() :
      size_id(0),
      adv_id(0)
    { }

    creative_attr_t( unsigned s, entity_id_t a ) :
      size_id(s),
      adv_id(a)
    { } 

    unsigned    size_id;
    entity_id_t adv_id;
};

struct section_attr_t
{
    section_attr_t() :
      site_id(0),
      pub_id(0)
    { }

    section_attr_t( site_id_t s, entity_id_t p ) :
      site_id(s),
      pub_id(p)
    { }

    site_id_t   site_id;
    entity_id_t pub_id;
};

//Used by builder & cache & predict_test
struct predict_cache_key
{
    predict_cache_key() :
      advertiser_id(0),
      size_id(0),
      creative_id(0),
      campaign_id(0),
      conversion_id(0),
      conversion_type_id(0),
      frequency(0),
      gender('U'),
      age(0),
      pub_class(0),
      pearl_id(0)
    { }

    entity_id_t     advertiser_id;
    unsigned        size_id;
    creative_id_t   creative_id;
    campaign_id_t   campaign_id;
    conversion_id_t conversion_id;
    unsigned        conversion_type_id;
    unsigned        frequency;
    char            gender;//U,F,M
    unsigned        age;// 0 - unknown; 1 - age < 18; 2 - age >= 18;
    unsigned        pub_class;
    uint64_t        pearl_id;
};
bool operator<(const predict_cache_key& a, const predict_cache_key& b);

//Used by Builder & cache
struct p2_cache_element {
    mixed_id_t key;
    uint32_t   num_childs;
    uint32_t   childs_offset;
    float      prob;
};
bool operator<(const p2_cache_element& a, const p2_cache_element& b);

//Used by Builder & p2dump
struct p2_cache_element_service {
    mixed_id_t key;
    uint32_t   num_childs;
    uint32_t   childs_offset;
    float      successes;
    float      tries;
    float      prob;
};
bool operator<(const p2_cache_element_service& a, const p2_cache_element_service& b);
bool operator==(const p2_cache_element_service& a, const p2_cache_element_service& b);

struct p2_throttle_cache_element {
    mixed_id_t key;
    uint32_t   num_childs;
    uint32_t   childs_offset;
    uint32_t   successes;
};
bool operator<(const p2_throttle_cache_element& a, const p2_throttle_cache_element& b);
bool operator==(const p2_throttle_cache_element& a, const p2_throttle_cache_element& b);

struct p2_pub_class_element{
    p2_pub_class_element(): pearl_id(0), pub_class(0){}
    uint64_t pearl_id;
    uint32_t pub_class;
};
bool operator<(const p2_pub_class_element& a, const p2_pub_class_element& b);

struct p2_pearl_map_element{
    p2_pearl_map_element(): key(0), pearl_id(0){}
    mixed_id_t key;
    uint64_t   pearl_id;
};
bool operator<(const p2_pearl_map_element& a, const p2_pearl_map_element& b);

class Predict2Utils
{
public:
    static const double gLowRecF0 = 14.4;
    static const double gLowRecR0 = 7.4;
    static const double gHighRecF0 = 18.0;
    static const double gHighRecR0 = -33.0;
public:
    static int getFreqRecCellFromBuckets(const int& frequency_bucket, const int& recency_bucket);
    static int getFreqRecCellFromClickPlus(const int& click_plus_freq, const int& click_plus_rec, bool has_cookies);
    static int getClickPlusRec(int recency_bucket);
    static int getClickPlusFreq(int frequency_bucket);
    static uint32_t getGenderAge (char age, unsigned gender);
    static double getModifier(int frequency_bucket, int recency_bucket);
    static mixed_id_t getClickKey(const predict_cache_key& key, int lvl);
    static mixed_id_t getPVCKey(const predict_cache_key& key, int lvl);
    static mixed_id_t getPCCKey(const predict_cache_key& key, int lvl);
    static mixed_id_t getClickThrottleKey(const predict_cache_key& key, int lvl);
    static mixed_id_t getPVCThrottleKey(const predict_cache_key& key, int lvl);
    static mixed_id_t getPCCThrottleKey(const predict_cache_key& key, int lvl);
};

inline int Predict2Utils::getClickPlusRec(int recency_bucket) {
    if (recency_bucket == 255) {
        recency_bucket = -1;
    }
    if (recency_bucket < 10 && recency_bucket >= 0) {
        return 0;
    } else if (recency_bucket < 13 && recency_bucket >= 0) {
        return 1;
    } else {
        return 2;
    }
}

inline int Predict2Utils::getClickPlusFreq(int frequency_bucket) {
    if (frequency_bucket == 255) {
        frequency_bucket = -1;
    }
    if (frequency_bucket == 0) {
        return 0;
    } else if (frequency_bucket > 0 && frequency_bucket < 6) {
        return 1;
    } else if (frequency_bucket > 0 && frequency_bucket < 10) {
        return 2;
    } else {
        return 3;
    }
}

inline int Predict2Utils::getFreqRecCellFromBuckets(const int& frequency_bucket, const int& recency_bucket){
 
    return getFreqRecCellFromClickPlus(getClickPlusFreq(frequency_bucket),
                                       getClickPlusRec(recency_bucket),
                                       frequency_bucket >= 0);//aka has_cookies
}

inline int Predict2Utils::getFreqRecCellFromClickPlus(const int& click_plus_freq,
                                                      const int& click_plus_rec,
                                                      bool has_cookies) {
    if (!has_cookies){
        return 3;//no_cookie
    }
    if (click_plus_freq == 0){
        return 0; // first seen
    } else if (click_plus_rec == 0) {
        return 1; // low recency
    } else {
        return 2; //high recency
    }
}

inline double Predict2Utils::getModifier(int frequency_bucket, int recency_bucket) {
    if (recency_bucket == 255) {
        recency_bucket = -1;
    }
    if (frequency_bucket == 255) {
        frequency_bucket = -1;
    }
    int freqRec = getFreqRecCellFromBuckets(frequency_bucket, recency_bucket);
    switch (freqRec) {
    case 0:
    case 3://no_cookie
        return 1;
    case 1:
        return (gLowRecR0 + recency_bucket) / gLowRecR0 * (gLowRecF0 - frequency_bucket + 1) / gLowRecF0;
    case 2:
        return (gHighRecR0 + recency_bucket) / gHighRecR0 * (gHighRecF0 - frequency_bucket + 1) / gHighRecF0;
    default:
        return -1;
    }
}

inline mixed_id_t Predict2Utils::getClickKey(const predict_cache_key& key, int lvl) {
    switch (lvl) {
    case INERTIAL_CLICK_PLUS_CR:
        return key.creative_id;
    case INERTIAL_CLICK_PLUS_AGE:
        return key.age;
    case INERTIAL_CLICK_PLUS_GENDER:
        return (key.gender == 'M' ? 1 : (key.gender == 'F' ? 2 : 0));
    case INERTIAL_CLICK_PLUS_PEARL:
        return key.pearl_id;
    case INERTIAL_CLICK_PLUS_ADV:
        return key.advertiser_id;
    case INERTIAL_CLICK_PLUS_SIZE:
        return key.size_id;
    case INERTIAL_CLICK_PLUS_FS:
        return key.frequency;
    case INERTIAL_CLICK_PLUS_PUB_CLASS:
        return key.pub_class;
    }
    stringstream s;
    s << "Predict2Utils::getClickKey:: Should never be triggered. Wrong level " << lvl << endl;
    throw logic_error( s.str() );
    return 0;
}

inline mixed_id_t Predict2Utils::getPVCKey (const predict_cache_key& key, int lvl){
    switch (lvl){
    case INERTIAL_PVC_CR:
        return key.creative_id;
    case INERTIAL_PVC_SIZE:
        return key.size_id;
    case INERTIAL_PVC_AGE:
        return key.age;
    case INERTIAL_PVC_GENDER:
        return (key.gender == 'M' ? 1 : (key.gender == 'F' ? 2 : 0));
    case INERTIAL_PVC_PEARL:
        return key.pearl_id;
    case INERTIAL_PVC_FS:
        return key.frequency;
    case INERTIAL_PVC_CAMP:
        return key.campaign_id;
    case INERTIAL_PVC_CONV:
        return key.conversion_id;
    case INERTIAL_PVC_ADV:
        return key.advertiser_id;
    case INERTIAL_PVC_CONVTYPE:
        return key.conversion_type_id;
    case INERTIAL_PVC_PUB_CLASS:
        return key.pub_class;
    }
    stringstream s;
    s << "Predict2Utils::getPVCKey:: Should never be triggered. Wrong level " << lvl << endl;
    throw logic_error( s.str() );
    return 0;
}

inline mixed_id_t Predict2Utils::getPCCKey (const predict_cache_key& key, int lvl) {
    switch (lvl){
    case INERTIAL_PCC_CR:
        return key.creative_id;
    case INERTIAL_PCC_SIZE:
        return key.size_id;
    case INERTIAL_PCC_AGE:
        return key.age;
    case INERTIAL_PCC_GENDER:
        return (key.gender == 'M' ? 1 : (key.gender == 'F' ? 2 : 0));
    case INERTIAL_PCC_PEARL:
        return key.pearl_id;
    case INERTIAL_PCC_CAMP:
        return key.campaign_id;
    case INERTIAL_PCC_CONV:
        return key.conversion_id;
    case INERTIAL_PCC_ADV:
        return key.advertiser_id;
    case INERTIAL_PCC_CONVTYPE:
        return key.conversion_type_id;
    case INERTIAL_PCC_PUB_CLASS:
        return key.pub_class;
    }
    stringstream s;
    s << "Predict2Utils::getPCCKey:: Should never be triggered. Wrong level " << lvl << endl;
    throw logic_error( s.str() );
    return 0;
}

inline mixed_id_t Predict2Utils::getClickThrottleKey (const predict_cache_key& key, int lvl)
{
    switch (lvl) {
    case THROTTLE_CLICK_CR:
        return key.creative_id;
    case THROTTLE_CLICK_PEARL:
        return key.pearl_id;
    case THROTTLE_CLICK_CAMP:
        return key.campaign_id;
    }
    stringstream s;
    s << "Predict2Utils::getClickPlusThrottleKey:: Should never be triggered. Wrong level " << lvl << endl;
    throw logic_error( s.str() );
    return 0;
}

inline mixed_id_t Predict2Utils::getPVCThrottleKey (const predict_cache_key& key, int lvl){
    switch (lvl){
    case THROTTLE_PVC_CR:
        return key.creative_id;
    case THROTTLE_PVC_PEARL:
        return key.pearl_id;
    case THROTTLE_PVC_CAMP:
        return key.campaign_id;
    case THROTTLE_PVC_CONV:
        return key.conversion_id;
    }
    stringstream s;
    s << "Predict2Utils::getPVCThrottleKey:: Should never be triggered. Wrong level " << lvl << endl;
    throw logic_error( s.str() );
    return 0;
}

inline mixed_id_t Predict2Utils::getPCCThrottleKey (const predict_cache_key& key, int lvl) {
    switch (lvl){
    case THROTTLE_PCC_CR:
        return key.creative_id;
    case THROTTLE_PCC_PEARL:
        return key.pearl_id;
    case THROTTLE_PCC_CAMP:
        return key.campaign_id;
    case THROTTLE_PCC_CONV:
        return key.conversion_id;
    }
    stringstream s;
    s << "Predict2Utils::getPCCThrottleKey:: Should never be triggered. Wrong level " << lvl << endl;
    throw logic_error( s.str() );
    return 0;
}

//Predict Cache Comparator
inline bool operator <(const predict_cache_key& a, const predict_cache_key& b)
{
    if (a.advertiser_id != b.advertiser_id){
        return a.advertiser_id < b.advertiser_id;
    }
    if (a.size_id != b.size_id){
        return a.size_id < b.size_id;
    }
    if (a.creative_id != b.creative_id) {
        return a.creative_id < b.creative_id ;
    }
    if (a.campaign_id != b.campaign_id) {
        return a.campaign_id < b.campaign_id ;
    }
    if (a.conversion_id != b.conversion_id) {
        return a.conversion_id < b.conversion_id ;
    }
    if (a.conversion_type_id != b.conversion_type_id) {
        return a.conversion_type_id < b.conversion_type_id;
    }
    if (a.frequency != b.frequency){
        return a.frequency < b.frequency;
    }
    if (a.gender != b.gender){
        return a.gender < b.gender;
    }
    if (a.age != b.age){
        return a.age < b.age;
    }
    if (a.pub_class != b.pub_class){
        return a.pub_class < b.pub_class;
    }
    return a.pearl_id < b.pearl_id;
}

inline bool operator<(const p2_cache_element& a, const p2_cache_element& b){
    return a.key < b.key;
}

inline bool operator<(const p2_cache_element_service& a, const p2_cache_element_service& b){
    return a.key < b.key;
}

inline bool operator==(const p2_cache_element_service& a, const p2_cache_element_service& b)
{
    return (a.key == b.key) &&
        (a.num_childs == b.num_childs) &&
        (a.childs_offset == b.childs_offset) &&
        (fabs(a.successes - b.successes) <= FLT_EPSILON * fabs(b.successes)) &&
        (fabs(a.tries - b.tries) <= FLT_EPSILON * fabs(b.tries)) &&
        (fabs(a.prob - b.prob) <= FLT_EPSILON * fabs(b.prob));
}

inline bool operator<(const p2_throttle_cache_element& a, const p2_throttle_cache_element& b){
    return a.key < b.key;
}

inline bool operator==(const p2_throttle_cache_element& a, const p2_throttle_cache_element& b)
{
    return (a.key == b.key) &&
        (a.num_childs == b.num_childs) &&
        (a.childs_offset == b.childs_offset) &&
        (a.successes == b.successes);
}

inline bool operator<(const p2_pub_class_element& a, const p2_pub_class_element& b){
    return a.pearl_id < b.pearl_id;
}

inline bool operator<(const p2_pearl_map_element& a, const p2_pearl_map_element& b){
    return a.key < b.key;
}

template <class T>
std::ostream& safe_write(std::ostream& s, const T& val )
{
    s.write( reinterpret_cast<const char *>(&val),  sizeof(T) );

    return s;
}

#endif // __Include_PREDICT2UTILS
