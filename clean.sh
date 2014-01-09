#! /bin/bash
# setup.sh [NAME] [NUM INSTALLS 1=one division 2=b and c]
if [[ $2 -eq 2 ]];
then
    sudo rm $1/{b,c}/{install.php,new_admin.php}
    sudo chmod -R 775 $1
    sudo chmod -R 777 $1/{b,c}/uploads
fi
if [[ $2 -eq 1 ]];
then
    sudo rm $1/{install.php,new_admin.php}
    sudo chmod -R 775 $1
    sudo chmod -R 777 $1/uploads
fi
echo "$1 setup complete"