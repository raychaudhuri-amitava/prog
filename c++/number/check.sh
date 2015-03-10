rm ./number_stub
cxxtestgen.pl --error-printer -o number_stub.cpp number_stub.hpp
c++ -g3 -O0 -o number_stub number_stub.cpp number.cpp 
./number_stub
