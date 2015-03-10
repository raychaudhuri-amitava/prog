#include "predictfactory.h"
#include "predictfactoryimpl.h"

bool PredictFactory::getNewInstant(PredictFactory_t &pf)
{
    cout<<"In PredictFactory getNewInstance"<<endl;
    pf = (PredictFactory_t)(dynamic_cast<PredictFactory *>(new PredictFactoryImpl()));
    pf->dummyinitialize();
    return true;
}

void PredictFactory::printme(void)
{
    cout<<"In PredictFactory printme"<<endl;
}

bool PredictFactory::dummyinitialize(void)
{
    cout<<"In PredictFactory dummyinitialize"<<endl;
    return false;
}

void PredictFactoryImpl::printme(void)
{
    cout<<"In PredictFactoryImpl printme"<<endl;
}

bool PredictFactoryImpl::dummyinitialize(void)
{
    cout<<"In PredictFactoryImpl dummyinitialize"<<endl;
    return true;
}
