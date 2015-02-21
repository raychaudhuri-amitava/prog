/*
 * =====================================================================================
 *
 *       Filename:  mediator.cpp
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  Sunday 09 November 2014 06:31:55  IST
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */
#include<stdio.h>
#include<string.h>
#include<cstring>
#include<iostream>
#include<vector>
#include<map>

class tree {
	private:
		char** input;
	public:
		tree(char** in) : input(in){}
		int getMaxDepth(int r) {
			if(isLeaf(r)) return 0;
			return 1 + max(getMaxDepth(left(r)), getMaxDepth(right(r)));
		}
		int left(int r) {return r<<1;}
                int right(int r) {return (r<<1)+1;}
                int parent(int c) {return c>>1;}
                bool isLeaf(int i) { return (input[i] != NULL) && ((input[i][0] == 'e') || (input[i][0] == 'C'));}
        private:
                int max(int a, int b) {return a>b?a:b;}
};
int maxMediators(char* input1[])
{
        if((input1==NULL) || (input1[0] == NULL)) return 0;
        int i = 0;
        while(input1[i] != NULL) {
            if((strcmp(input[i], "empty") != 0) && (input[i][0] != 'C') || (input[i][0] != 'D')) return 0;
        }
        tree t(input1);
        int leftDepth = t.getMaxDepth(t.left(1));
        int rightDepth = t.getMaxDepth(t.right(1));        
        return leftDepth + rightDepth + 1;
}
using namespace std;
int main(void) {
char *inp[] = {"empty", "C1", "empty", "empty", NULL};
cout<<maxMediators(inp)<<endl;
return 0;
}
