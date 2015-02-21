/*
 * =====================================================================================
 *
 *       Filename:  prob_3.cc
 *
 *    Description:  Largest prime factor
 *
 *        Version:  1.0
 *        Created:  Sunday 07 December 2014 10:02:21  IST
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (),
 *   Organization:
 *
 * =====================================================================================
 */

#include<iostream>
#include<stdint.h>
#include<cmath>
#include<vector>
#include<algorithm>

using namespace std;

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

int main(void) {
    uint64_t val = sqrt(600851475143) + 5;
    vector<uint64_t> primes;
    generate_primes_from_1_to_n(val, primes);
    for(uint64_t v = val; v>0; v--) {
        if(600851475143 % v ==0) {
            vector<uint64_t>::iterator it = lower_bound(primes.begin(), primes.end(), v);
            if((it != primes.end()) && (*it == v)) {
                cout<<"val = "<<v<<endl;
                break;
            }
        }
    }
    return 0;
}


