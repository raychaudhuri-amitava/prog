#include<iostream>
#include<ctime>

using namespace std;
void printtime(char * tme){
    cout<<"prnt tm = "<<tme<<endl;
}

int main(void) {
    char str[] = "0000/00/00 00:00:00";
    cout<<sizeof(str)<<endl;
    cout<<"bad time = "<<str<<endl;
    time_t now = time(NULL);
    struct tm gmt;
    now = -now;
    gmtime_r(&now, &gmt);
    strftime(str, 20, "%Y/%m/%d %H:%M:%S", &gmt);

    int i = 10;
    int j = sizeof(i++);
    cout<<"i = "<<i<<"  j = "<<j<<endl;

    cout<<"now time = "<<str<<endl;

    printtime(str);

    return 0;
}
