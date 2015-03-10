/* -*- mode: c++; c-basic-offset: 4; indent-tabs-mode: nil; tab-width: 4 -*- */
/* vi: set expandtab shiftwidth=4 tabstop=4: */
/* RMHEADER
 */

#include "Predict2LearnCell.h"

void cr_camp_conv_pearl_key::writeToFile(ostream& output) const
{
    safe_write(output, creative_id);
    safe_write(output, campaign_id);
    safe_write(output, conversion_id);
    safe_write(output, pearl_id);
}

void cr_pearl_key::writeToFile(ostream& output) const
{
    safe_write(output, creative_id);
    safe_write(output, pearl_id);
}

void cr_camp_pearl_key::writeToFile(ostream& output) const
{
    safe_write(output, creative_id);
    safe_write(output, campaign_id);
    safe_write(output, pearl_id);
}
