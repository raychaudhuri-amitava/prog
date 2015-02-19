#include <string>
#include <iostream>
#include <algorithm>
#include <cstdlib>
#include <ctime>
 
using namespace std;

int substring(string const& T, string const& P) {
    int m = P.size();
    int n = T.size();

    int pos[256] = {0};

    for(int k = 0; k < m; k++) {
        pos[P[k]] = k + 1;
    }

    int i = m - 1;
    int j = m - 1;

    while(i < n) {
        if(T[i] == P[j]) {
            if(j == 0) {
                return i;
            } else {
                i--;
                j--;
            }
        }else {
            i = i + m - min(j, pos[T[i]]);
            j = m - 1;
        }
    }
    return -1;
}

int main(void) {
    srand(time(0));
    string T(100, '\0');
    string S(5, '\0');
    string mS(5, '\0');
    int stm = rand()%100 - 10;
    if(stm < 0) {
        stm = 20;
    }
    for(int i = 0; i < 100; i++) {
        T[i] = char('a' + rand() % 26);
        if((i >= stm) && (i < stm + 5)) {
            mS[i - stm] = T[i];
        }
    }
    for(int i = 0; i < 5; i++) {
        S[i] = char('a' + rand() % 26);
    }

    int pos = substring(T, S);
    int mpos = substring(T, mS);
    cout<<"Text : "<<T<<endl;
    cout<<"Pattern : "<<S<<endl;
    cout<<"Match pos = "<<pos<<endl;
    cout<<"mPattern : "<<mS<<endl;
    cout<<"Match mpos = "<<mpos<<endl;
    return 0;
}

