#include<iostream>

using namespace std;

#define ANY_CHAR_ARRAY "I am Amitava Ray Chaudhuri"

int main(void) {
const char *a = "I am Amitava Ray Chaudhuri";
const char b[] = "I am Amitava Ray Chaudhuri";
cout<<"size of arrar = "<<sizeof(ANY_CHAR_ARRAY)<<" Length = "<<(sizeof(ANY_CHAR_ARRAY) - 1)<<endl;
cout<<"size of arrar = "<<sizeof(a)<<endl;
cout<<"size of arrar = "<<sizeof(b)<<endl;
return 0;

}
