#include<shared.h>
#include<ctime>
#include<stdint.h>
#include<iostream>

#include"non_shared.h"

#define PRINTALL 0
//#define MAX_LEVEL (LONG_MAX - 1)
#ifndef MAX_LEVEL
#define MAX_LEVEL (LONG_MAX - 1)
#else
#undef PRINTALL
#define PRINTALL 1
#endif

using namespace std;


int main(void)
{
    clock_t ti,tf;
    double nonsec=0.0,sharesec=0.0;
//    int dummy_arg = 0;
#if PRINTALL == 0
    clock_t totti,tottf;
    double totaltime=0.0;
#endif

#if PRINTALL == 0
    totti=clock();
#endif
    ti=clock();
    for(uint64_t i=0;i<MAX_LEVEL;i++)
    {
        non_shared_func();
    }
    tf=clock();

    nonsec=((double)(tf-ti)/(double)CLOCKS_PER_SEC)*1000.0;

    ti=clock();
    for(uint64_t i=0;i<MAX_LEVEL;i++)
    {
        shared_func();
    }
    tf=clock();

    sharesec=((double)(tf-ti)/(double)CLOCKS_PER_SEC)*1000.0;

#if PRINTALL == 0
    tottf=clock();
    totaltime = ((double)(tottf-totti)/(double)CLOCKS_PER_SEC)*1000.0;
    cout<<"Time taken by non shared func = "<<nonsec<<" msec."<<endl;
    cout<<"Time taken by shared func = "<<sharesec<<" msec."<<endl;
    cout<<"Total Time taken  = "<<totaltime<<" msec."<<endl;
#elif PRINTALL == 1
    //CREATE TABLE DIFFS
    //(
    //  tot_val BIGINT(20),
    //  shared_sec REAL(100),
    //  non_shared_sec REAL(100)
    //);
    //    
    cout<<"INSERT INTO DIFFS VALUES("<<MAX_LEVEL<<","<<sharesec<<","<<nonsec<<");\n";
#endif

    return 0;
}
