#include<iostream>
#include<sstream>
#include<stack>

using namespace std;

void toh(int N, int from, int usng, int to, int &step) {
    if(N == 0) return;
   
    toh(N-1, from, to, usng, step);
    step++;
    cout<<"step:"<<step<<" : Move Disk " <<N<<" from Rod "<<from<<" to Rod# "<<to<<endl;
    toh(N-1, usng, from, to, step);
}


int main(int argc, char ** argv) {
    if(argc != 2) {
        cout<<argv[0]<<" <# of disks>"<<endl;
        return 0;
    }
    istringstream in(argv[1]);
    int N = 0;
    in>>N;
    cout<<"Using recursive function: "<<endl;
    int step = 0;
    toh(N, 1, 2, 3, step);
    return 0;
}