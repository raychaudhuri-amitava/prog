/* -*- mode: c++; c-basic-offset: 4; indent-tabs-mode: nil; tab-width: 4 -*- */
/* vi: set expandtab shiftwidth=4 tabstop=4: */
/* RMHEADER
 */

#ifndef COM_RIGHTMEDIA_PREDICT2_LEARN_CELL_H
#define COM_RIGHTMEDIA_PREDICT2_LEARN_CELL_H

#include "Predict2Utils.h"

#include <cfloat>
#include <iostream>

/** \brief Quadruple (creative, campaign, conversion, pearl)
 *         used as element in CPA and dCPM learning caches.
 */
struct cr_camp_conv_pearl_key {

public:
    /** \brief Constructor.
     */
    cr_camp_conv_pearl_key():
        creative_id(0),
        campaign_id(0),
        conversion_id(0),
        pearl_id(0) {}

    /** \brief Destructor.
     */
    ~cr_camp_conv_pearl_key() {}

    inline bool operator<(const cr_camp_conv_pearl_key& key) const
    {
        if (creative_id != key.creative_id) {
            return creative_id < key.creative_id ;
        }
        if (campaign_id != key.campaign_id) {
            return campaign_id < key.campaign_id ;
        }
        if (conversion_id != key.conversion_id) {
            return conversion_id < key.conversion_id ;
        }
        return pearl_id < key.pearl_id ;
    }

    inline bool operator==(const cr_camp_conv_pearl_key& key) const
    {
        return (creative_id == key.creative_id) &&
            (campaign_id == key.campaign_id) &&
            (conversion_id == key.conversion_id) &&
            (pearl_id == key.pearl_id);
    }

    /** \brief Write the current quadruple to a file.
     *
     * \param[in]  output  destination stream
     */
    void writeToFile(ostream& output) const;

public:
    creative_id_t   creative_id;
    campaign_id_t   campaign_id;
    conversion_id_t conversion_id;
    uint64_t        pearl_id;
};

/** \brief Pair (creative, pearl) used as element
 *         in CPC learning caches.
 */
struct cr_pearl_key {

public:
    /** \brief Constructor.
     */
    cr_pearl_key(): creative_id(0), pearl_id(0) {}

    /** \brief Destructor.
     */
    ~cr_pearl_key() {}

    inline bool operator<(const cr_pearl_key& key) const
    {
        if (creative_id != key.creative_id) {
            return creative_id < key.creative_id ;
        }
        return pearl_id < key.pearl_id ;
    }

    inline bool operator==(const cr_pearl_key& key) const
    {
        return (creative_id == key.creative_id) &&
            (pearl_id == key.pearl_id);
    }

    /** \brief Write the current pair to a file.
     *
     * \param[in]  output  destination stream
     */
    void writeToFile(ostream& output) const;

public:
    creative_id_t creative_id;
    uint64_t      pearl_id;
};

/** \brief Triple (creative, campaign, pearl) used as
 *         element in dCPM with click target learning caches.
 */
class cr_camp_pearl_key
{
public:
    /** \brief Constructor.
     */
    cr_camp_pearl_key():
        creative_id(0),
        campaign_id(0),
        pearl_id(0) {}

    /** \brief Destructor.
     */
    ~cr_camp_pearl_key() {}

    inline bool operator<(const cr_camp_pearl_key& key) const
    {
        if (creative_id != key.creative_id) {
            return creative_id < key.creative_id ;
        }
        if (campaign_id != key.campaign_id) {
            return campaign_id < key.campaign_id ;
        }
        return pearl_id < key.pearl_id ;
    }

    inline bool operator==(const cr_camp_pearl_key& key) const
    {
        return (creative_id == key.creative_id) &&
            (campaign_id == key.campaign_id) &&
            (pearl_id == key.pearl_id);
    }

    /** \brief Write the current quadruple to a file.
     *
     * \param[in]  output  destination stream
     */
    void writeToFile(ostream& output) const;

public:
    creative_id_t creative_id;
    campaign_id_t campaign_id;
    uint64_t      pearl_id;
};

/** \brief This class specifies elements called cells
 *         which are the basic blocks for building
 *         caches for learning in predict2.
 */
template<class T>
class Predict2LearnCell {

public:
    /** \brief Constructor.
     */
    Predict2LearnCell();

    /** \brief Destructor.
     */
    ~Predict2LearnCell();
    
    inline bool operator<(const Predict2LearnCell& cell) const
    {
        return key < cell.key;
    }

    inline bool operator==(const Predict2LearnCell& cell) const
    {
        return (key == cell.key) && 
            (fabs(learn_prob - cell.learn_prob) <= FLT_EPSILON * fabs(cell.learn_prob));
    }

    /** \brief Write the current cell to a file.
     *
     * \param[in]  output  destination stream
     */
    void writeToFile(ostream& output) const;

public:
    T key;
    float learn_prob;
};

template<class T>
Predict2LearnCell<T>::Predict2LearnCell() : learn_prob(10.0)
{
    // do nothing
}

template<class T>
Predict2LearnCell<T>::~Predict2LearnCell()
{
    // do nothing
}

template<class T>
void Predict2LearnCell<T>::writeToFile(std::ostream& output) const
{
    key.writeToFile(output);
    safe_write(output, learn_prob);
}

#endif // COM_RIGHTMEDIA_PREDICT2_LEARN_CELL_H
