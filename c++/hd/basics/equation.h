/*
 * =====================================================================================
 *
 *       Filename:  equation.h
 *
 *    Description:  Generic equation stuffs
 *
 *        Version:  1.0
 *        Created:  04/18/2015 08:34:20 PM
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  ARC
 *   Organization:  
 *
 * =====================================================================================
 */

#ifndef __EQUATION_H__
#define __EQUATION_H__

#include<stdint.h>

#include "allbytes.h"

class Equation {
    public:
        void printAllVals(uint32_t st, uint32_t ed, AllBytes const &eqn) {
            eqn.printHead();
            for(uint32_t x = st; x <= ed; x++) {
                eqn(static_cast<uint8_t>(x));
            }
        }
};

#endif //__EQUATION_H__
