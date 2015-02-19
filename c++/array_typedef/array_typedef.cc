#include<iostream>
#include<stdint.h>

using namespace std;

namespace priv {
	enum A{
		A1=0,
		A2,
		A3,
		AN
	};
	typedef uint64_t predict_key[AN];
}

uint64_t someFunc(priv::predict_key& x, priv::A pos){
	return x[pos];
}

int main(void){

	priv::predict_key k;
	k[priv::A1] = 1;
	k[priv::A2] = 2;
	k[priv::A3] = 3;

	cout<<"k1 = "<<k[priv::A1]<<"  k2 = "<<k[priv::A2]<<"  k3 = "<<k[priv::A3]<<endl;
	cout<<"k1 = "<<someFunc(k,priv::A1)<<"  k2 = "<<someFunc(k,priv::A2)<<"  k3 = "<<someFunc(k,priv::A3)<<endl;

	return 0;
}
