/*
 * =====================================================================================
 *
 *       Filename:  prob_5.cc
 *
 *    Description:  Smallest multiple
 *
 *        Version:  1.0
 *        Created:  Monday 08 December 2014 02:12:58  IST
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
    for(uint64_t v = 22; ; v+=2) {
        bool thisistheans = true;
        for(uint64_t i = 2; i <= 20; i++) {
            if(v%i != 0) {
                thisistheans = false;
                break;
            }
        }
        if(thisistheans) {
            cout<<v<<endl;
            break;
        }
    }
    return 0;
}

