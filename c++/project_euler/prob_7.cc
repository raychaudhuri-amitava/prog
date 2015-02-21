/*
 * =====================================================================================
 *
 *       Filename:  prob_7.cc
 *
 *    Description:  10001st prime
 *
 *        Version:  1.0
 *        Created:  Friday 19 December 2014 05:32:43  IST
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */

#include<vector>
#include<stdint.h>


void generate_primes_from_1_to_n(const uint64_t &n, vector<uint64_t> &primes) {
    primes.clear();
    size_t size = floor(0.5 * (n - 3)) + 1;
    primes.push_back(2);
    vector<bool> is_prime(size, true);
    for (uint64_t i = 0; i < size; ++i) {
        if (is_prime[i]) {
            uint64_t p = (i << 1) + 3;
            primes.push_back(p);
            for (uint64_t j = ((i * i) << 1) + 6 * i + 3; j < size; j += p) {
                is_prime[j] = false;
            }
        }
    }
}

