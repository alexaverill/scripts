#! /bin/bash
sites[0]="scioly.org"
sites[1]="192.168.2.5" #file_server
sites[2]="192.168.2.2"
check_status(){
      ping -c 1 $1 >> /dev/null
      st=$?
      if [ $st -eq 1 ] 
      then
 		echo $1 "Has a problem"
		mail -s "$1 has a problem" "alex@scioly.org"   
   fi	
}
x=0
while [ $x -le 2 ]
do
   check_status ${sites[$x]}
   let "x+=1"
done
