#include <iostream>
#include <string>
using namespace std;

int MaxStartIndex = 0, MaxEndIndex = 0;
int StartIndex = 0, EndIndex = 0;
int countIterations = 0;
string arr;

bool isPalindrom(int i, int j)
{
	int startPos = i;

	for(;i<j;i++)
	{
		if(arr[i]!=arr[j-i+startPos])
			return false;
		countIterations++;
	}
	return true;
}

void findMaxPal()
{
	for( StartIndex=0 ; StartIndex<arr.size(); StartIndex++)
	{
		for(EndIndex = StartIndex; EndIndex < arr.size(); EndIndex++)
		{
			if (EndIndex-StartIndex+1 > MaxEndIndex-MaxStartIndex+1)
			{
				bool newPal = isPalindrom(StartIndex, EndIndex);
	
				if (newPal)
				{
					MaxStartIndex = StartIndex;
					MaxEndIndex = EndIndex;
				}
			}
			else 
				countIterations++;	
		}
	}
}

void printPal()
{
	for(int i=MaxStartIndex; i<=MaxEndIndex ; i++)
		cout << arr[i];
	
	cout << endl << "iterations: " << countIterations << endl; 
}

int main()
{
	cin >> arr;
	findMaxPal();
	printPal();
}


