#include<iostream>

using namespace std;

bool isPalindrome(int x) {
    if(x < 0) return false;

    int div_count = 0;
    int rev_x = 0;

    while(x >= rev_x) {
        rev_x = rev_x * 10 + x%10;
        x = x / 10;
        div_count++;
        if(x == rev_x) {
            return true;
        }
    }
    if(x == (rev_x/10)) {
        return true;
    }

    return false;
}

int main(void) {
    int A[] = {0,1,7,11,121,333,2147447412,-1, 12, 1000, 1001,2147483647, 100, 110110000, 1101110000};

    for(int i = 0; i < (sizeof(A)/sizeof(int));i++){
        cout<<A[i]<<" = "<<(isPalindrome(A[i]) ? "yes":"no")<<endl;
    }

    return 0;
}



