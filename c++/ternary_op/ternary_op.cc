#include<iostream>
#include<stdint.h>

using namespace std;

#define DT_MAX_NUM_ATTR_CLICK 10

int main(void) {
    uint32_t fLookupDepth = 0;
    int max_depth = 0;

    max_depth = ((fLookupDepth == 0) ? DT_MAX_NUM_ATTR_CLICK : ((fLookupDepth > DT_MAX_NUM_ATTR_CLICK) ? DT_MAX_NUM_ATTR_CLICK : fLookupDepth));
    cout<<"max_depth = "<<max_depth<<" lookup = "<<fLookupDepth<<endl;
    fLookupDepth = 20; 
    max_depth = ((fLookupDepth == 0) ? DT_MAX_NUM_ATTR_CLICK : ((fLookupDepth > DT_MAX_NUM_ATTR_CLICK) ? DT_MAX_NUM_ATTR_CLICK : fLookupDepth));
    cout<<"max_depth = "<<max_depth<<" lookup = "<<fLookupDepth<<endl;
    fLookupDepth = 6; 
    max_depth = ((fLookupDepth == 0) ? DT_MAX_NUM_ATTR_CLICK : ((fLookupDepth > DT_MAX_NUM_ATTR_CLICK) ? DT_MAX_NUM_ATTR_CLICK : fLookupDepth));
    cout<<"max_depth = "<<max_depth<<" lookup = "<<fLookupDepth<<endl;
    fLookupDepth = 10; 
    max_depth = ((fLookupDepth == 0) ? DT_MAX_NUM_ATTR_CLICK : ((fLookupDepth > DT_MAX_NUM_ATTR_CLICK) ? DT_MAX_NUM_ATTR_CLICK : fLookupDepth));
    cout<<"max_depth = "<<max_depth<<" lookup = "<<fLookupDepth<<endl;

    return 0;
}
