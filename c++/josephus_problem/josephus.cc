/*
 * =====================================================================================
 *
 *       Filename:  josephus.cc
 *
 *    Description:  Solving the josephus problem directly to get insight.
 *
 *        Version:  1.0
 *        Created:  03/29/2015 01:29:28 PM
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */

#include<iostream>
#include<sstream>
#include "circular_list.h"

using namespace std;

int main(int argc, char ** argv) {
    if(argc < 3) {
        cout<<"syntax : "<<argv[0]<<" #people #skip"<<endl;
        return 0;
    }

    stringstream ss(argv[1]);
    int n = 0;
    int skip = 0;
    ss>>n;
    ss.flush();
    ss.clear();
    ss.str(argv[2]);
    ss>>skip;
    ss.flush();
    clist l;
    for(int i = 1; i <= n; i++) {
        l.insert(i);
    }
    l.circular_remove(skip);
    l.print_list();
    return 0;
}
