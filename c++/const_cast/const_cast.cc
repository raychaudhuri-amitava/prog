#include<iostream>

using namespace std;

void swap(const int &x1, const int &x2) {
	int x = x1;
	cout<<"In the swap"<<endl;
	cout<<"x1 = "<<x1<<"  x2 = "<<x2<<endl;
	const_cast<int&>(x1) = const_cast<int&>(x2);
	const_cast<int&>(x2) = x;
	cout<<"x1 = "<<x1<<"  x2 = "<<x2<<endl;
	cout<<"Out of the swap"<<endl;
}
int main(void) {
	const int x1 = 10;
	const int x2 = 20;
	cout<<"x1 = "<<x1<<"  x2 = "<<x2<<endl;
	swap(x1,x2);
	cout<<"x1 = "<<x1<<"  x2 = "<<x2<<endl;
	return 0;
}
