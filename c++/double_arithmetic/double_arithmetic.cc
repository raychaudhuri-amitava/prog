#include<iostream>
#include<fstream>
#include<stdint.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <limits.h>

using namespace std;

template <class T>
std::ostream& safe_write(std::ostream& s, const T& val )
{
	s.write( reinterpret_cast<const char *>(&val), sizeof(T) );
	return s;
}

template<class T>
inline bool safe_read(int filefd, T &val) {
	//Read one T at a time.
	bool done = false;
	uint32_t tries = 0; //Try max 10 times.
	ssize_t b = read(filefd, reinterpret_cast<char*>(&val), sizeof(T));
	return true;
}


int main(void){
	double ubd = 768.0;
	uint32_t ubu = 768;

	double capd = ubd/0.77;
	uint32_t capu = ubu/0.77;
	cout<<"Double = "<<capd<<" Uint = "<<capu<<endl;
	for(uint64_t x = 0; x < ULONG_MAX; x++) {
		ofstream os("a.txt", ios::trunc);
		uint32_t y = 63;
		double xd = static_cast<double>(x);
		double yd = static_cast<double>(y);
		//cout<<"x = "<<xd<<"  xu = "<<x<<"  y = "<<yd<<"  yu = "<<y<<endl;
		safe_write(os,xd); 
		safe_write(os,yd); 
		os.close();

		int fd = open("a.txt", O_RDONLY);
		double xdd = 0.0;
		double ydd = 0.0;
		uint64_t xu = 0;
		uint32_t yu = 0;

		safe_read(fd, xdd);
		safe_read(fd, ydd);
		close(fd);
		xu = static_cast<uint64_t>(xdd);
		yu = static_cast<uint32_t>(ydd);
		//cout<<"x = "<<xdd<<"  xu = "<<xu<<"  y = "<<ydd<<"  yu = "<<yu<<endl;

		xd = x;
		//if(xd<xdd) cout<<"less than"<<endl;
		//else cout<<"greater than or equal to"<<endl;
		if(xd != xdd){
			cout <<"no equal equal !!!"<<endl;
			cout<<"x = "<<xdd<<"  xu = "<<xu<<"  y = "<<ydd<<"  yu = "<<yu<<endl;
		}
		if(xd > xdd){
			cout <<"Greater !!!"<<endl;
			cout<<"x = "<<xdd<<"  xu = "<<xu<<"  y = "<<ydd<<"  yu = "<<yu<<endl;
		}
		if(xd < xdd){
			cout <<"Less !!!"<<endl;
			cout<<"x = "<<xdd<<"  xu = "<<xu<<"  y = "<<ydd<<"  yu = "<<yu<<endl;
		}
	}
	return 0;
}
