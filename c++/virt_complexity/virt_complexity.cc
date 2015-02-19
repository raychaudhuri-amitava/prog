#include<iostream>

using namespace std;

class A {
	public:
		virtual void f1() {
			cout<<"In f1 of A\n";
		}
		virtual void f2() {
			cout<<"In f2 of A\n";
		}
		virtual void f3() {
			cout<<"In f3 of A\n";
		}
		virtual void f4() {
			cout<<"In f4 of A\n";
		}
		virtual void f5() {
			cout<<"In f5 of A\n";
		}
		virtual void f6() {
			cout<<"In f6 of A\n";
		}
                void f7() {
			cout<<"In f7 of A\n";
                }
};

class B : public A {
	public:
		virtual void f1() {
			cout<<"In f1 of B\n";
		}
		virtual void f2() {
			cout<<"In f2 of B\n";
		}
		virtual void f3() {
			cout<<"In f3 of B\n";
		}
		virtual void f4() {
			cout<<"In f4 of B\n";
		}
		virtual void f5() {
			cout<<"In f5 of B\n";
		}
		virtual void f6() {
			cout<<"In f6 of B\n";
		}
                void f7() {
			cout<<"In f7 of B\n";
                }
};

int main(void) {
A *a = new A();
A *b = new B();
A *c = new B();
B *d = new B();
A e;
B f;
a->f1();
a->f7();
b->f1();
c->f1();
d->f1();
b->f2();
b->f7();
delete a;
delete b;
delete c;
delete d;

return 0;
}
