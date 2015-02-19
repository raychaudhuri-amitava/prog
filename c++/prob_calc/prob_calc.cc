#include<iostream>

using namespace std;

int main(void){
   double nsucc = 12.72812;
   double chsucc = 7.8881;
   double ntries = 32.7812812;
   double chtries = 15.783481;
   double parent_prob = 0.0091992;

   double prob1 = (nsucc + 1.0 - chsucc) /
       (ntries + (1.0 / parent_prob - chtries));

   double prob2 = (nsucc + 1.0 - chsucc) /
       (ntries + ((1.0 / parent_prob) - chtries));

   cout<<"prob1 = "<<prob1<<" prob2 = "<<prob2<<endl;

   return 0;
}
   
