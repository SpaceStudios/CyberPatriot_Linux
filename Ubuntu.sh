#!/bin/bash

#sudo apt-get update -y
#sudo apt-get upgrade -y
#sudo apt-get dist-upgrade

users=()
adminstrators=()
fileName="Test.sh"

echo "How many users are there on the system?"
read userCount
userCountint=$(($userCount))
echo There are $userCountint users on this system.

for i in $(seq $userCountint); do
    echo What is the username of user $i?
    read Username
    echo What is the rank of $Username?
    read Rank
    users+=($Username)
    if [ $Rank == 'Administrator' ] | [ $Rank == 'Admin' ]; then
        adminstrators+=($Username)
    fi 
done

echo Users are: ${users[*]}
echo Admins are: ${adminstrators[*]}
for user in $(cut -d: -f1,3 /etc/passwd | egrep ':[0-9]{4}$' | cut -d: -f1); do
    echo $user
    #sudo passwd $user
    #Password should always be set to S3CUR3D_4O4
done

#sudo passwd -l root
#sudo ufw enable
#sudo ufw status

sudo rm -r $fileName