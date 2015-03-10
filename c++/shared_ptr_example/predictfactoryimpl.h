#ifndef __PREDICT_FACTORYIMPL_H
#define __PREDICT_FACTORYIMPL_H

#include<iostream>
#include<boost/shared_ptr.hpp>
#include "predictfactory.h"

using namespace std;


class PredictFactoryImpl : public PredictFactory
{
    public:
        PredictFactoryImpl()
        {
            cout<<"In PredictFactoryImpl Constructor"<<endl;
        }
        
        virtual ~PredictFactoryImpl()
        {
            cout<<"In PredictFactoryImpl Destructor"<<endl;
        }
        
        virtual void printme(void);
    protected:
        virtual bool dummyinitialize();
};

#endif // __PREDICT_FACTORY_H
