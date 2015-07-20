/*
 * =====================================================================================
 *
 *       Filename:  parity.cc
 *
 *    Description:  parity checker
 *
 *        Version:  1.0
 *        Created:  07/18/2015 04:42:39 PM
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
#include<bitset>

using namespace std;

bool checkParity(uint64_t v) {
	v^=(v>>32);
	v^=(v>>16);
	v^=(v>>8);
	v^=(v>>4);
	v^=(v>>2);
	v^=(v>>1);
	return v & 0x01;
}

int main(void) {
	uint64_t a0 = 0x6;
	uint64_t a1 = 0x13;
	uint64_t a2 = 0x20;
	uint64_t a3 = 0x16728891;
	uint64_t a4 = 0x7182;
	uint64_t a5 = 0xa128162718715242;

	cout<<bitset<64>(a0)<<" : "<<a0<<" : "<<checkParity(a0)<<endl;
	cout<<bitset<64>(a1)<<" : "<<a1<<" : "<<checkParity(a1)<<endl;
	cout<<bitset<64>(a2)<<" : "<<a2<<" : "<<checkParity(a2)<<endl;
	cout<<bitset<64>(a3)<<" : "<<a3<<" : "<<checkParity(a3)<<endl;
	cout<<bitset<64>(a4)<<" : "<<a4<<" : "<<checkParity(a4)<<endl;
	cout<<bitset<64>(a5)<<" : "<<a5<<" : "<<checkParity(a5)<<endl;

	return 0;
}

