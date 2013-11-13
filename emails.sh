#o Script to add email redirection.
echo Please enter the new email name  and the email to direct to: 
read NAME ToGo
echo You have entered $NAME and it will go to $ToGo

#mkdir /home/$NAME
useradd -m $NAME		#adds user and home dir
echo "$NAME:$ToGo" >> /etc/aliases	
newaliases
service postfix restart
passwd -l $NAME 		#locks user account
echo Emails Added, please test.

