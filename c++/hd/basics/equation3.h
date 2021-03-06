/*
 * =====================================================================================
 *
 *       Filename:  equation3.h
 *
 *    Description:  x & (x - 1)
 *
 *        Version:  1.0
 *        Created:  04/18/2015 08:37:39 PM
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  ARC
 *   Organization:  
 *
 * =====================================================================================
 */

#ifndef __EQUATION_3_H__
#define __EQUATION_3_H__

#include "allbytes.h"

class Equation3 : public AllBytes {
    void operator()(uint8_t x) const {
        //x&(x+1)
        cout<<"--------\n";
        printByte(x);
        cout<<endl;
        printByte(x&(x+1));
        cout<<"\n--------\n";
    }

    string getExp() const {
        return string("x&(x+1)");
    }
};

#endif //__EQUATION_3_H__
