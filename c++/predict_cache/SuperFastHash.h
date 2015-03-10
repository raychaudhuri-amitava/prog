/* -*- mode: c; c-basic-offset: 4; indent-tabs-mode: nil; tab-width: 4 -*- */
/* vi: set expandtab shiftwidth=4 tabstop=4: */
#ifndef _INCLUDE_SUPERFASTHASH
#define _INCLUDE_SUPERFASTHASH
#include <stdint.h>

/**
 * http://www.azillionmonkeys.com/qed/hash.html
 * Copyright by Paul Hsieh
 * Licensing http://www.azillionmonkeys.com/qed/weblicense.html
 *   (Summary: free)
 *
 * Current time performed on
 * Althon 2.2Ghz  08-Macch-2006

 * CRC32           :  4.6800s
 * oneAtATimeHash  :  4.1000s
 * alphaNumHash    :  2.9300s
 * FNVHash         :  2.3500s
 * BobJenkins      :  1.4400s
 * SuperFastHash   :  1.0100s
 */

uint32_t SuperFastHash(const char* data, int len);

#endif

