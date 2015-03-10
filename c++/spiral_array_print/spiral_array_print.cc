#include<iostream>

#ifndef M
#define M 2
#endif
#ifndef N
#define N 6
#endif

using namespace std;

int print_trh(int arr[][N],int top_axis, int top_start, int top_end, int right_axis, int right_start, int right_end) {
  int elms = 0;
  int i = 0;
  for(i = top_start;i<=top_end;i++){
     cout<<arr[top_axis][i]<<" , ";
     elms++;
  }
  for(i = right_start;i<=right_end;i++){
     cout<<arr[i][right_axis]<<" , ";
     elms++;
  }
  return elms;
}


int print_blf(int arr[][N],int bottom_axis, int bottom_start, int bottom_end, int left_axis, int left_start, int left_end) {
  int elms = 0;
  int i = 0;
  for(i = bottom_start;i>=bottom_end;i--){
     cout<<arr[bottom_axis][i]<<" , ";
     elms++;
  }
  for(i = left_start;i>=left_end;i--){
     cout<<arr[i][left_axis]<<" , ";
     elms++;
  }
  return elms;
}

int main(void) {
   int A[M][N] = {0};
   int k = 1;
   for(int i = 0;i<M;i++){
       for(int j = 0; j<N; j++) {
          A[i][j] = k;
          k++;
       }
   }
   k = 0;
   int hr_axis = 0;
   int hr_start = 0;
   int hr_end = N - 1;
   int vr_axis = N-1;
   int vr_start = 1;
   int vr_end = M - 1;
   for(int i=0;i<M*N;){
    i+=(print_trh(A,hr_axis,hr_start,hr_end,vr_axis,vr_start,vr_end));
    hr_axis = vr_end;
    vr_axis = hr_start;
    hr_start^=hr_end^=hr_start^=hr_end;
    hr_start--;
    vr_start^=vr_end^=vr_start^=vr_end;
    vr_start--;
    if(i>=M*N) break;
    i+=(print_blf(A,hr_axis,hr_start,hr_end,vr_axis,vr_start,vr_end));
    hr_axis = vr_end;
    vr_axis = hr_start;
    hr_start^=hr_end^=hr_start^=hr_end;
    hr_start++;
    vr_start^=vr_end^=vr_start^=vr_end;
    vr_start++;
  }
  cout<<endl;
  return 0;
}
