#include<iostream>
#include<cstdlib>
#include<ctime>

using namespace std;

int main(void) {
    srand(time(NULL));
    int m = (rand() % 100) + 1;

    int times = 0;
    int used[100] = {0};

    for(int i = 0; i<100; i++) {
        used[i] = i;
    }

    used[m-1] = 0;
    used[0] = m-1;
    times++;
    string junk;
    int last_2_digit = 0;
    for(;times<100;times++) { 
        int pos = times + rand()%(100 - times);
        cout<<(used[pos] + 1)<<"   "<<((last_2_digit + used[pos] + 1)%100)<<endl;
        last_2_digit = ((last_2_digit + used[pos] + 1)%100);
        int tmp = used[times];
        used[times] = used[pos];
        used[pos] = tmp;
    }
    getline(cin, junk);
    cout<<"I have choosen : "<<m<<endl;
    return 0;

}

