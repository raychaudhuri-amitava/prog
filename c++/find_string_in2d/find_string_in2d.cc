/*
 * =====================================================================================
 *
 *       Filename:  find_string_in2d.cc
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  08/11/2014 12:07:07 PM
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */

#include<iostream>
#include<vector>

using namespace std;


bool findPattern(const char *str, int len, int k, vector<vector<char>>& arr, int n, int m, int i, int j)
{
    if (k < 0 || k >= len || i < 0 || j < 0 || i >= n || j >= m) {
        return false;
    }
    if (arr[i][j] == str[k])
    {
        if (k == len-1)
            return true;
        int sum = 0;
        for (int r = -1; r <= 1; r++) {
            for (int t = -1; t <= 1; t++) {
                if (r!=0 || t!=0)
                {
                    sum += (int)findPattern(str,len,k+1,arr,n,m,i+r,j+t);
                }
            }
        }
        return sum>0;
    }
    return false;
}

bool findPattern(const char *str, int len, vector<vector<char>>& arr, int n, int m)
{
    if (len <= 0)
        return false;
    int i = 0, j = 0;
    for (i = 0;i<n;i++) {
        for(j = 0;j<m;j++)
        {
            if (arr[i][j] == str[0])
            {
                cout << "found the first char\n";
                if(findPattern(str,len,0,arr,n,m,i,j)) {
                    return true;
                }
            }
        }
    }
    return false;
}

int main(void) {

    vector<vector<char>> arr = {
        {'A','C','P','R','C'},
        {'X','S','O','P','C'},
        {'V','O','V','N','I'},
        {'W','G','F','M','N'},
        {'Q','A','T','I','T'}
    };
    const char* pattern="MICROSOFT";

    int x,y;
    if(findPattern(pattern, 9, arr, 5, 5)) {
        cout<<"Microsoft is present"<<endl;
    } else {
        cout<<"Microsoft is not present"<<endl;
    }

    return 0;
}
