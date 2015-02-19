#include<iostream>
#include<stdint.h>
#include<math.h>

using namespace std;

int main(void){

  uint32_t l = 8206;
  uint32_t k = 0;

  double Z = static_cast<double>(k) - static_cast<double>(l) / sqrt(static_cast<double>(l));
  cout<<Z<<"  "<<static_cast<double>(l)<<"  "<<sqrt(static_cast<double>(l))<<"   "<<static_cast<double>(k-l)<<"  "<<static_cast<float>(k-l)<<"   "<<(static_cast<float>(l)+1.0)<<endl;
  return 0;

}
