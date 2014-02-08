#! /bin/bash
#Draws a tree based on input $1 is base size $2 is trunk $3 is leaves
# it should take the total number and make that the max amount of leaves to draw
#See TreeDescription for full description
maxLeaves=$1
#Then make a string to hold current leaves
currLeaves=1
place=1
spaces=$((maxLeaves))
for (( x=1; x<=maxLeaves; x+=2 ))
do
	run=1;
	spacesToPlace=1
	while((spacesToPlace<=spaces))
	do
		echo -n " "
		spacesToPlace=$((spacesToPlace+2))
	done
	for (( y=1; y<=x; y+=1 ))
	do
		echo -n "$3"
	done
	place+=2
	spaces=$((spaces-2))
	echo ""
done
#draw trunk
trunkSpaces=$(( maxLeaves/2))
for ((y=1; y<=trunkSpaces; y+=1))
do
	echo -n " "
done
for ((z=1; z<=3; z+=1))
do
	echo -n "$2"
done
echo ""
