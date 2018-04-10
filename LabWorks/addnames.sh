if [ $#<2 ]
then
echo "No of arguments less than Two"
exit
fi
if [ -f "$1" ]
then
echo "File Found"
else
echo "File not Found"
exit
fi
grep -Fxq "$2" "$1"
if [ $? -eq 0 ]
then
echo "User Found"
else
echo "User not found"
echo "$2" >> $1
fi
