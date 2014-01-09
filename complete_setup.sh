#! /bin/bash
# setup.sh [NAME] [NUM INSTALLS 1=one division 2=b and c]
if [[ $2 -eq 2 ]];
then
    sudo mkdir $1
    sudo unzip releases/2.0.4.2ff.zip -d $1/b
    sudo unzip releases/2.0.4.2ff.zip -d $1/c
    #sudo mv $1/b/2.0.4.2/* b/
    #sudo mv $1/c/2.0.4.2/* c
    sudo chmod -R 777 $1/*
fi
if [[ $2 -eq 1 ]];
then
    sudo mkdir $1
    sudo unzip releases/2.0.4.2ff.zip -d $1/
    #sudo mv  $1/2.0.4.2/* $1/
    sudo chmod -R 777 $1/*
fi
echo "$1 setup complete"