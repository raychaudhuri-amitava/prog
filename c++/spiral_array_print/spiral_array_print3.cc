#include<iostream>
#include<string>

using namespace std;


void initArray(int **arr, int N) {
    int k = 0;
    for(int i = 0; i < N; i++) {
        for(int j = 0; j < N; j++) {
            arr[i][j] = k++;
        }
    }
} 

void printArr(int **arr, int N) {
    int k = 0;
    for(int i = 0; i < N; i++) {
        for(int j = 0; j < N; j++) {
             cout<<arr[i][j]<<","; 
        }
        cout<<endl;
    }
}

void printSpiral(int N) {
    if(N == 0) return;
    int **arr = NULL;
    arr = new int*[N];
    for(int i = 0; i < N; i++) {
        arr[i] = new int[N];
    }
    initArray(arr,N);
    printArr(arr,N);
    for(int layer = 0; layer < N / 2; ++layer) {
        int first = layer;
        int last = N - 1 - layer;
        for(int incoff = first; incoff < last; ++incoff) {
            cout<<arr[first][incoff]<<",";
        }
       
        for(int incoff = first; incoff < last; ++incoff) {
            cout<<arr[incoff][last]<<",";
        }
        for(int incoff = first; incoff < last; ++incoff) {
            int decoff = first + (last - incoff);
            cout<<arr[last][decoff]<<",";
        }
        for(int incoff = first; incoff < last; ++incoff) {
            int decoff = first + (last - incoff);
            cout<<arr[decoff][first]<<",";
        }
    }
    cout<<endl;
    for(int i = 0; i < N; i++) {
        delete [] arr[i];
    }
    delete [] arr;
}

int main(void) {
    printSpiral(6);
    return 0;
}
