rm *.txt
./file_open_more 0 2000
echo $?
if [ $? -le -1 ]; then
    echo "got negative" > result.txt;
fi
# read -p "Press any key"
./file_open_more 2001 4000
echo $?
if [ $? -le -1 ]; then
    echo "got negative" >> result.txt;
fi
# read -p "Press any key"
./file_open_more 4001 6000
echo $?
if [ $? -le -1 ]; then
    echo "got negative" >> result.txt;
fi
# read -p "Press any key"
./file_open_more 6001 8000
echo $?
if [ $? -le -1 ]; then
    echo "got negative" >> result.txt;
fi
# read -p "Press any key"
./file_open_more 8001 10000
echo $?
if [ $? -le -1 ]; then
    echo "got negative" >> result.txt;
fi
# read -p "Press any key"
./file_open_more 10001 12000
echo $?
if [ $? -le -1 ]; then
    echo "got negative" >> result.txt;
fi
# read -p "Press any key"
./file_open_more 12001 14000
echo $?
if [ $? -le -1 ]; then
    echo "got negative" >> result.txt;
fi
# read -p "Press any key"
./file_open_more 14001 16000
echo $?
if [ $? -le -1 ]; then
    echo "got negative" >> result.txt;
fi
# read -p "Press any key"
./file_open_more 16001 18000
echo $?
if [ $? -le -1 ]; then
    echo "got negative" >> result.txt;
fi
# read -p "Press any key"
./file_open_more 18001 20000
echo $?
if [ $? -le -1 ]; then
    echo "got negative" >> result.txt;
fi
# read -p "Press any key"
./file_open_more 20001 40000
echo $?
if [ $? -le -1 ]; then
    echo "got negative" >> result.txt;
fi
# read -p "Press any key"
./file_open_more 40001 100000
echo $?
if [ $? -le -1 ]; then
    echo "got negative" >> result.txt;
fi
# read -p "Press any key"
