#! /bin/bash
sites[0]="scioly.org"
sites[1]="192.168.2.5" #file_server
x=0
while [ $x -le 1 ]
do
   ping -c 1  ${sites[$x]} > /dev/null
   echo $?
   if (( $? == 0 ))
   then
	echo ${sites[$x]} " was pinged"
   else
	echo ${sites[$x]} " HAS NO PING"
   fi 
   let "x+=1"
done
