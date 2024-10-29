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

for user in $(); do
    echo $user
done

#sudo passwd -l root
#sudo ufw enable
#sudo ufw status

#sudo nano /etc/login.defs
#PASS_MAX_DAYS 90
#PASS_MIN_DAYS 7
#PASS_WARN_AGE 14
#LOGIN_RETRIES 3
#LOGIN_TIMEOUT 30
#ENCRYPT_METHOD SHA512

#sudo nano /etc/sysctl.conf
#net.ipv6.conf.all.disable_ipv6 = 1
#net.ipv4.tcp_syncookies = 1
#net.ipv4.icmp_echo_ignore_broadcasts = 1
#net.ipv4.conf.all.send_redirects = 0
#net.ipv4.conf.all.log_martians = 1
#net.ipv4.ip_forward = 0
#net.ipv4.icmp_echo_ignore_all = 1
#net.ipv4.conf.all.secure_redirects = 0

#sudo nano /etc/ssh/sshd_config
#PermitRootLogin=no

#sudo systemctl

#sudo rm -r $fileName