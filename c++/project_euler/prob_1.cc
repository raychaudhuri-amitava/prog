/*
 * =====================================================================================
 *
 *       Filename:  prob_1.cc
 *
 *    Description:  Multiples of 3 and 5
 *
 *        Version:  1.0
 *        Created:  Sunday 07 December 2014 09:39:44  IST
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (),
 *   Organization:
 *
 * =====================================================================================
 */

#include<iostream>
using namespace std;

int main(void) {
    int sum=0;
    for(int i=1; i <1000; i++) {
        if((i%3==0)||(i%5==0)) {
            sum+=i;
        }
    }
    cout<<"sum = "<<sum<<endl;
    return 0;
}
