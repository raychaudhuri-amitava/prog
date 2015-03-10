#include<iostream>
using namespace std;

struct MYSQL{
    char *db;
    MYSQL(){db=NULL;}
    ~MYSQL(){delete db;}
};

int main(void)
{
    MYSQL *db1=NULL;
    MYSQL *db2=new MYSQL();
    MYSQL *db3=new MYSQL();
    db3->db=new char[100];
    strcpy(db3->db,"PredictDB");
    char *errstr1 = "No database";
    char *errstr2 = "No database again";
    cout<<((db1!=NULL)?((db1->db!=NULL)?db1->db:errstr1):errstr2)<<endl;
    cout<<((db2!=NULL)?((db2->db!=NULL)?db2->db:errstr1):errstr2)<<endl;
    cout<<((db3!=NULL)?((db3->db!=NULL)?db3->db:errstr1):errstr2)<<endl;

    delete db1;
    delete db2;
    delete db3;

    return 0;
}

