#include<iostream>

using namespace std;

class IFACE {
    private:
        IFACE();
    public:
        void A();
        void B();
};

class BASE : public IFACE{
    private:
        int pi;
    protected:
        int pri;
    public:
        int pui;

    private:
        void pprint(){
            cout<<"BASE:private func\n";
        }
    protected:
        void prprint(){
            cout<<"BASE:protected func\n";
        }
    public:
        void puprint(){
            cout<<"BASE:public func\n";
        }
        void A() {
            cout<<"BASE:A not iface\n";
        }
        void check();
};

class DERIVED_0 : public BASE{
    public:
/*        void paccess() {
            pi = 20;
            pprint();
            cout<<"DER0:pi = "<<pi<<endl;
        }*/
        void praccess() {
            pri = 20;
            prprint();
            cout<<"DER0:pri = "<<pri<<endl;
        }
        void puaccess() {
            pui = 20;
            puprint();
            cout<<"DER0:pui = "<<pui<<endl;
        }
        void check() {
            cout<<"DER0:Check\n";
        }
};

class DERIVED_1 : public DERIVED_0{
    public:
/*        void paccess() {
            pi = 20;
            pprint();
            cout<<"DER1:pi = "<<pi<<endl;
        }*/
        void praccess() {
            pri = 20;
            prprint();
            cout<<"DER1:pri = "<<pri<<endl;
        }
        void puaccess() {
            pui = 20;
            puprint();
            cout<<"DER1:pui = "<<pui<<endl;
        }
};



int main() {
    //IFACE i;
    BASE b;
    b.A();
    b.puprint();
    DERIVED_0 d;
   // d.paccess();
    d.praccess();
    d.puaccess();
    d.check();
    DERIVED_1 e;
   // d.paccess();
    e.praccess();
    e.puaccess();
    e.check();
    return 0;
}

