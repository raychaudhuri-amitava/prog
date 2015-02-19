#include<iostream>
#include<stdint.h>

using namespace std;

int8_t gint8=0;

void set_val(void * val){
   gint8 = *((int8_t *)(val));
}

void get_int_val(void * val){
    *((int8_t *)val) = gint8;
}

int main(void){
    int8_t val1 = 20;
    int val2 = 0;
    set_val((void *)(&val1));
    get_int_val((void *)(&val2));

    cout<<"ret val = "<<val2<<"size of int8 = "<<sizeof(int8_t)<<"size of int "<<sizeof(int)<<endl;

    return 0;
}
