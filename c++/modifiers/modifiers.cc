#include<iostream>

using namespace std;

int main(void) {

    static const double gLowRecF0 = 14.4;
    static const double gLowRecR0 = 7.4;
    static const double gHighRecF0 = 18.0;
    static const double gHighRecR0 = -33.0;
    int recency_bucket = 10;
    int frequency_bucket = 12;
    double val1 =  (gHighRecR0 + recency_bucket) / gHighRecR0 * (gHighRecF0 - frequency_bucket + 1) / gHighRecF0;
    double val2 =  ((gHighRecR0 + recency_bucket) / gHighRecR0) * ((gHighRecF0 - frequency_bucket + 1) / gHighRecF0);
  
    cout<<"val1 = "<<val1<<"    val2 = "<<val2<<endl;
    
    return 0;
}

    
