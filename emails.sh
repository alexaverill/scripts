#o Script to add email redirection.
correct=true
while :
do
echo Please enter the new email name  and the email to direct to: 
read NAME ToGo
echo You have entered $NAME and it will go to $ToGo is this correct? y 0r n
read r
if test "$r" = "y"
	then
	 	set correct=false
		break
	fi
done

useradd -m $NAME		#adds user and home dir
echo "$NAME:$ToGo" >> /etc/aliases	
newaliases
service postfix restart
passwd -l $NAME 		#locks user account
echo Emails Added, please test.

