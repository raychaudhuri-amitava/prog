#!/bin/bash
#usage gather_stats.sh <start> <end> <step>
#All parameters are mandatory.
x=`expr $1`
end=`expr $2`
step=`expr $3`
echo "x = $x"
echo "end = $end"
echo "step = $step"
sudo rm -f /usr/lib/libarcshared.so
sudo rm -f /usr/include/shared.h
sudo ldconfig
rm -f ./calling
rm -f ./non_shared.o
g++ -shared -O2 -o libarcshared.so ./shared.cc
#g++ -shared -o libarcshared.so ./shared.cc
sudo cp ./shared.h /usr/include/shared.h
sudo cp ./libarcshared.so /usr/lib/libarcshared.so
sudo ldconfig
rm -f ./libarcshared.so

rm -f ./stats_sql.sql
echo "DROP TABLE IF EXISTS DIFFS;" > ./stats_sql.sql
echo "CREATE TABLE DIFFS ( tot_val BIGINT(20), shared_sec REAL(40,10), non_shared_sec REAL(40,10) );" >> ./stats_sql.sql

rm -f ./calling


while [ $x -le $end ]
do
    echo "iteration = $x"
    export LD_PRELOAD=/usr/lib/libarcshared.so
    sudo ldconfig
#    g++ -O2 -c -o non_shared.o ./non_shared.cc
#    g++ -O2 -o calling -larcshared -DMAX_LEVEL=$x ./non_shared.o ./calling.cc
     g++ -c -o non_shared.o ./non_shared.cc
     g++ -o calling -larcshared -DMAX_LEVEL=$x ./non_shared.o ./calling.cc
    ./calling >> ./stats_sql.sql
    rm -f ./calling
    rm -f ./non_shared.o
    export LD_PRELOAD=
    sudo ldconfig
    x=`expr $x + $step`
done
sudo rm -f /usr/include/shared.h
sudo rm -f /usr/lib/libarcshared.so
sudo ldconfig
rm -f ./calling
rm -f ./non_shared.o

mysql -uroot -Dpredict -proot < ./stats_sql.sql
rm -f ./stats_sql.sql

rm -f ./show_diff
g++ -I /usr/local/include/mysql++/ -I /usr/include/mysql -lmyplot -lmysqlpp -o show_diff show_diff.cc
./show_diff
rm -f ./show_diff

echo "DROP TABLE IF EXISTS DIFFS;" > ./stats_sql.sql
mysql -uroot -Dpredict -proot < ./stats_sql.sql
rm -f ./stats_sql.sql


