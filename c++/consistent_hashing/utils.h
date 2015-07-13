/*
 * =====================================================================================
 *
 *       Filename:  utils.h
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  Wednesday 24 June 2015 10:53:51  IST
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */

#ifndef __UTILS_H_
#define __UTILS_H_

#include <stdint.h>
#include <string>

template<typename KEY>
class hash_func_t {

public:
    uint32_t operator() (KEY const& ky); //use murmur3 hashing
    template<typename T>
    struct hash_func {
        typedef hash_func_t<T> hf;
    };
};

#include "utils.tpp"

#endif //__UTILS_H_

