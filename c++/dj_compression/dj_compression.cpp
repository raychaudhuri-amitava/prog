#include<iostream>
#include<sstream>
#include<fstream>
#include<stdint.h>
#include<string>
#include<map>

using namespace std;

int main(void) {
    uint32_t temp = 0;
    uint32_t rem = 0;
    string line;
    ifstream myfile("a.txt");
    while(getline(myfile,line)) {
        stringstream ss; 
        ss << line;
        ss >> temp;
        rem = temp & 7;
        temp = temp >> 3;
        temp = temp << 8;
        uint32_t x = 1<<rem;
        cout<<line<<"="<<temp<<"|"<<rem<<endl;
    }
    return 0;
}

