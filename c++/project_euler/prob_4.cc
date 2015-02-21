/*
 * =====================================================================================
 *
 *       Filename:  prob_4.cc
 *
 *    Description:  Largest palindrome product
 *
 *        Version:  1.0
 *        Created:  Monday 08 December 2014 01:52:39  IST
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

using namespace std;

bool isPalindrome(uint64_t v) {
    uint64_t t = v;
    uint64_t r = 0;

    while(t > 0) {
        r=r*10 + t%10;
        t=t/10;
    }
    return r==v;
}

int main(void) {
    uint64_t max_pal = 0;
    for(uint64_t f = 999; f>=100; f--) {
        for(uint64_t s = f; s>=100; s--) {
            if(isPalindrome(f*s) && f*s > max_pal) {
               max_pal = f*s;
            }
        }
    }

    cout<<"Max palin = "<<max_pal<<endl;
    return 0;
}


