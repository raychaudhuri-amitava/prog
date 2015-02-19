#include<iostream>
#include<sstream>
#include <fstream>
using namespace std;

void print() {
    cout<<"Junk things1\n";
    cout<<"Junk things2\n";
    cout<<"Junk things3\n";
    cout<<"Junk things4\n";
    cout<<"Junk things5\n";
    cout<<"Junk things6\n";
    cout<<"Junk things7\n";
    cout<<"Junk things8\n";
    cout<<"Junk things9\n";
    cout<<"Junk things10\n";
    cout<<"Junk things11\n";
}

void something(int argc, char **argv) {
    cout<<"Nothing"<<endl;
}


int main(void) {
    ostringstream a;
    streambuf *psbuf  = NULL, *backup = NULL;
    backup = cout.rdbuf();
    psbuf = a.rdbuf(); 
    cout.rdbuf(psbuf);
    print();
    cout.rdbuf(backup);
    cout<<"out side now"<<endl;
    cout<<a.str()<<endl;
    char const *argv[] = {"predict_bindump", "--help", "def"};
    int argc = sizeof(argv) / sizeof(char**);

    cout<<"Size = "<<argc<<endl;
    something(argc, const_cast<char**>(argv));
    return 0;
}


