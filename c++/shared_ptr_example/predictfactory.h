#ifndef __PREDICT_FACTORY_H
#define __PREDICT_FACTORY_H

#include<iostream>
#include<boost/shared_ptr.hpp>

using namespace std;
class PredictFactory;
typedef boost::shared_ptr<PredictFactory> PredictFactory_t;


class PredictFactory
{
    public:
        static bool getNewInstant(PredictFactory_t& pf);
        PredictFactory()
        {
            cout<<"In PredictFactory Constructor"<<endl;
        }
        
        virtual ~PredictFactory()
        {
            cout<<"In PredictFactory Destructor"<<endl;
        }
        
        virtual void printme(void);
    protected:
        virtual bool dummyinitialize();      
};

#endif // __PREDICT_FACTORY_H
