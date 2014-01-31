#! /bin/bash
#this script rotates sciolys homepage at certain times
# 1 switch to friday screen 2 back to normal
loc=/var/www/sites/scioly.org/public/
if [[ $1 -eq  2 ]];
then 
	sudo mv $loc/index.html $loc/fr_index.html
	sudo mv $loc/bk_index.html $loc/index.html
fi
if [[ $1 -eq 1 ]];
then 
	sudo mv $loc/index.html $loc/bk_index.html
	sudo mv $loc/fr_index.html $loc/index.html
fi

