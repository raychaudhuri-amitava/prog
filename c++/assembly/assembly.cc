#define INC(mem) asm volatile("inc %0;":"=a"(mem):"0"(mem));
#define DEC(mem) asm volatile("dec %0;":"=a"(mem):"0"(mem));
#define __PTR_TO_VAL(mem) size_t((void*)(mem))
#define __VAL_TO_PTR(type, val) (type)(val)
#define XCHG64(mem1, mem2) { \
    mem1 = __VAL_TO_PTR(typeof(mem1), __PTR_TO_VAL(mem1)^__PTR_TO_VAL(mem2)); \
    mem2 = __VAL_TO_PTR(typeof(mem2), __PTR_TO_VAL(mem2)^__PTR_TO_VAL(mem1)); \
    mem1 = __VAL_TO_PTR(typeof(mem1), __PTR_TO_VAL(mem1)^__PTR_TO_VAL(mem2)); \
}

#define XCHGAS64(mem1, mem2)  \
    asm volatile("xchg %0, %1; \n" \
            :"=r"(mem1), "=r"(mem2) \
            :"0"(mem1), "1"(mem2))

#define XMOV64(mem1, mem2)  \
    asm volatile("mov %0, %1; \n" \
            :"=r"(mem2), "=r"(mem1) \
            :"0"(mem2), "1"(mem1))

#include<iostream>
#include<stdint.h>

using namespace std;

int main(void) {
    int i = 10;
    int j = 20;
    int *pi = &i;
    int *pj = &j;
    INC(i);
    INC(j);
    cout<<"i = "<<i<<" j = "<<j<<endl;
    DEC(i);
    DEC(j);
    cout<<"i = "<<i<<" j = "<<j<<endl;
    cout<<"pi = "<<*pi<<" pj = "<<*pj<<endl;
    XCHG64(pi, pj);
    cout<<"pi = "<<*pi<<" pj = "<<*pj<<endl;
    XCHGAS64(pi, pj);
    cout<<"pi = "<<*pi<<" pj = "<<*pj<<endl;
    XMOV64(pi, pj);
    cout<<"pi = "<<*pi<<" pj = "<<*pj<<endl;

    int a[10] = {0};
    INC(a[0]);
    INC(a[1]);
    DEC(a[6]);
    DEC(a[8]);
    for(int k = 0; k < 10; k++) {
        cout<<"a["<<k<<"] = "<<a[k]<<endl;
    }

    int b = -1;
    int c = 0;

    switch(b) {
        if(c == 1) {
            b++;
          case 0: 
            cout<<"b 0, c 1\n";
            break;
        }else {
            b++;
          case 1:
            cout<<"b 0, c 0\n";
            break;

        }
      case 2:
        cout<<"b 2\n";
        break;
    }

    return 0;
}

