/*
 * =====================================================================================
 *
 *       Filename:  driver.cc
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  Monday 29 June 2015 01:27:49  IST
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */

#include "consistent_hash.h"
#include "utils.h"
#include<vector>
#include<string>
#include<iostream>


using namespace std;

int main(void) {
        vector<string> v;
	v.push_back("amitava1");
	v.push_back("amitava2");
	v.push_back("amitava3");
	v.push_back("amitava4");
	consistent_hash<int, int> chs(v);
	chs.insert(10,15);
	chs.insert(20,15);
	chs.insert(30,15);
	chs.insert(40,15);
	chs.insert(50,15);
	int res = -1;
	chs.find(10, res);
	cout<<"10 : "<<res<<endl;
	chs.find(20, res);
	cout<<"20 : "<<res<<endl;
	chs.find(30, res);
	cout<<"30 : "<<res<<endl;
	chs.find(40, res);
	cout<<"40 : "<<res<<endl;
	chs.find(50, res);
	cout<<"50 : "<<res<<endl;

	return 0;
}


