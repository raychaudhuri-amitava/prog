#include <fstream>
#include <ostream>

template <class T>
std::ostream& safe_write(std::ostream& s, const T& val )
{
  s.write( reinterpret_cast<const char *>(&val),  sizeof(T) );
  return s;
}

int main(void) {

double d1=0.0001211, d2=0.00000617171, d3=0.71718190001221, d4=1.28910018821;
uint64_t x1=616,x2=62717,x3=8281,x4=0;
std::ofstream out("dbl.bin", std::ios::trunc);
safe_write(out,d1);
safe_write(out,x1);
safe_write(out,d2);
safe_write(out,x2);
safe_write(out,d3);
safe_write(out,x3);
safe_write(out,d4);
safe_write(out,x4);
out.close();
return 0;
}
