/*
 * =====================================================================================
 *
 *       Filename:  serviceX.cc
 *
 *    Description:  usage of config reader in services
 *
 *        Version:  1.0
 *        Created:  03/18/2015 09:56:48 PM
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */

#include "dh_map.h"
#include <thread>
#include <iostream>

using namespace std;

void module1() {
    dh_map dm(true);
    while(true) {
    cout<<"key = abcd : value = "<<dm.get("abcd")<<endl;
    cout<<"key = def : value = "<<dm.get("def")<<endl;
    cout<<"key = ghi : value = "<<dm.get("ghi")<<endl;
    cout<<"key = jkl : value = "<<dm.get("jkl")<<endl;
    std::this_thread::sleep_for(std::chrono::seconds(3));
    }
}

void module2() {
    dh_map dm(true);
    while(true) {
    cout<<"key = mno : value = "<<dm.get("mno")<<endl;
    cout<<"key = pqr : value = "<<dm.get("pqr")<<endl;
    cout<<"key = stu : value = "<<dm.get("stu")<<endl;
    cout<<"key = vwx : value = "<<dm.get("vwx")<<endl;
    std::this_thread::sleep_for(std::chrono::seconds(7));
    }
}

int main(void) {
    dh_map::startLoading();
    thread T1(module1);
    thread T2(module2);
    T1.join();
    T2.join();
    return 0;
}

