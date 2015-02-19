#include<iostream>

using namespace std;
#define NUM 26

template<uint32_t N>
struct A {
	int x[N];
	char y[N];
	A(){
		for(int i=0;i<N;i++) {
			cout<<"x = "<<x[i]<<"  y = "<<y[i]<<endl;
			x[i] = 0;
			y[i]= '\0';
			cout<<"x = "<<x[i]<<"  y = "<<y[i]<<endl;
		}
	}
};

int main(void){
	A<NUM> a;
	for(int i=0;i<NUM;i++) {
		a.x[i] = i+1;
		a.y[i]= char('a'+i);
	}

	A<NUM> b;
	b = a; //default assignment oprtr

	A<NUM> c(a); //default cp ctor.

	for(int i=0;i<NUM;i++) {
		cout<<"b.x = "<<b.x[i]<<"  b.y = "<<b.y[i]<<endl;
		cout<<"c.x = "<<c.x[i]<<"  c.y = "<<c.y[i]<<endl;
	}

	return 0;
}
