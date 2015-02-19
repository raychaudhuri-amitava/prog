#include<stdio.h>
#include<boost/shared_ptr.hpp>
#include "predictfactory.h"

PredictFactory_t predictFactory;

int main()
{
    if(PredictFactory::getNewInstant(predictFactory))
    {
        cout<<"Got true from getNewInstant"<<endl;
    }
    predictFactory->printme();
    return 0;

}

