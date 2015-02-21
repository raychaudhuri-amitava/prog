/*
 * =====================================================================================
 *
 *       Filename:  prob_2.cc
 *
 *    Description:  Even Fibonacci numbers
 *
 *        Version:  1.0
 *        Created:  Sunday 07 December 2014 09:53:57  IST
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

int main(void) {
    uint64_t v1 = 1;
    uint64_t v2 = 2;
    uint64_t sum = 2;
    while(v2 <= 4000000) {
        uint64_t t = v2;
        v2=v1+v2;
        v1=t;
        if(v2%2 == 0) {
            sum+=v2;
        }
    }
    cout<<"sum = "<<sum<<endl;
    return 0;
}


