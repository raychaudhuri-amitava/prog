#include "SuperFastHash.h"
#include <stdlib.h>
/**
 * http://www.azillionmonkeys.com/qed/hash.html
 * Copyright by Paul Hsieh
 * Licensing http://www.azillionmonkeys.com/qed/weblicense.html
 *   (Summary: free)
 */

#undef get16bits

#
#ifndef WORDS_BIGENDIAN
/* intel, amd, etc */
#define get16bits(d) (*((const uint16_t *) (d)))
#else
/* ppc, sun, ibm */
#define get16bits(d) ((((const uint8_t*)(d))[1]<<8)+((const uint8_t*)(d))[0])
#endif

uint32_t SuperFastHash (const char * data, int len) {
    uint32_t hash = len, tmp;
    int rem;

    if (len <= 0 || data == NULL) return 0;

    rem = len & 3;
    len >>= 2;

    /* Main loop */
    for (;len > 0; len--) {
        hash  += get16bits (data);
        tmp    = (get16bits (data+2) << 11) ^ hash;
        hash   = (hash << 16) ^ tmp;
        data  += 2*sizeof (uint16_t);
        hash  += hash >> 11;
    }

    /* Handle end cases */
    switch (rem) {
    case 3: hash += get16bits (data);
        hash ^= hash << 16;
        hash ^= data[sizeof (uint16_t)] << 18;
        hash += hash >> 11;
        break;
    case 2: hash += get16bits (data);
        hash ^= hash << 11;
        hash += hash >> 17;
        break;
    case 1: hash += *data;
        hash ^= hash << 10;
        hash += hash >> 1;
    }

    /* Force "avalanching" of final 127 bits */
    hash ^= hash << 3;
    hash += hash >> 5;
    hash ^= hash << 2;
    hash += hash >> 15;
    hash ^= hash << 10;

    return hash;
}
