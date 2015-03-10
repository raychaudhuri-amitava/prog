#include <iostream>
#include <vector>

using namespace std;

main()
{
	// Declare size of two dimensional array and initialize.
	//vector< vector<int> > vI2Matrix(3, vector<int>(2,0));   
	vector< vector<double> > vI2Matrix;   
	int maxrow = 10;
	int maxcol = 5;
	int k = 1;
	for(int row = 0;row < maxrow;row++) {
		vector<double> rw;
		vI2Matrix.push_back(rw);    
		for(int col = 0; col<maxcol;col++) {
			vI2Matrix[row].push_back(double(k)/100.0);
			k++;
		}
	}        

	cout << "Loop by index:" << endl;
        cout<<"No. of rows = "<<vI2Matrix.size()<<endl;
	for(int row = 0;row < vI2Matrix.size();row++) {
                cout<<"No. of cols["<<row<<"] = "<<vI2Matrix[row].size()<<endl;
		for(int col = 0; col<vI2Matrix[row].size();col++) {
			cout<<vI2Matrix[row][col]<<" , ";
		}
		cout<<endl;
	}        

        vector<int> v1;
        vector<int> v2{v1};

}
