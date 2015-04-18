/*
 * =====================================================================================
 *
 *       Filename:  allbytes.h
 *
 *    Description:  Base class
 *
 *        Version:  1.0
 *        Created:  04/18/2015 08:31:27 PM
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  ARC 
 *   Organization:  
 *
 * =====================================================================================
 */

#ifndef __ALL_BYTES_H
#define __ALL_BYTES_H

#include<iostream>
#include<stdint.h>

using namespace std;

class AllBytes {
    public:
        virtual void operator()(uint8_t x) const {}
        virtual string getExp() const {return "";}
        virtual void printByte(uint8_t x) const {
            uint8_t mask = 0x80;
            while(mask != 0) {
                if(x&mask) {
                    cout<<"1";
                }else {
                    cout<<"0";
                }
                mask>>=1;
            }
        }
        virtual void printHead() const {
            cout<<"All the values for equation "<<getExp()<<endl;
        }
};

#endif //__ALL_BYTES_H
