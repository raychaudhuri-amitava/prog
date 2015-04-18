/*
 * =====================================================================================
 *
 *       Filename:  rightmost_bit.c
 *
 *    Description:  Manipulating rightmost bit.
 *
 *        Version:  1.0
 *        Created:  04/18/2015 07:45:21 PM
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  ARC
 *   Organization:  
 *
 * =====================================================================================
 */

#include<stdint.h>
#include<sstream>
#include<iostream>
#include<vector>

#include "allbytes.h"
#include "equation.h"
#include "equation1.h"
#include "equation2.h"
#include "equation3.h"
#include "equation4.h"
#include "equation5.h"
#include "equation6.h"

using namespace std;


int main(int argc, char **argv) {
    if(argc < 3) {
        cout<<argv[0]<<" start (<=256) end (<=256) [start is made <= end]\n";
        return 0;
    }
  
    stringstream st(argv[1]);
    uint32_t start = 0;
    st>>start;
    st.clear();
    st.flush();
    st.str(argv[2]);
    uint32_t end = 0;
    st>>end;
    st.flush();
    Equation eq;
    vector<AllBytes*> allEquations;
    allEquations.push_back(new Equation1());
    allEquations.push_back(new Equation2());
    allEquations.push_back(new Equation3());
    allEquations.push_back(new Equation4());
    allEquations.push_back(new Equation5());
    allEquations.push_back(new Equation6());

    for(vector<AllBytes*>::const_iterator cit = allEquations.begin(); cit != allEquations.end(); ++cit) {
        eq.printAllVals(start, end, **cit);
    }

    return 0;

}
