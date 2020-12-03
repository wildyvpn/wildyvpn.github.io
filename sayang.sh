#!/bin/bash
# Script By WILDYVPN
# 
# ==================================================

# initializing var
export DEBIAN_FRONTEND=noninteractive
OS=`uname -m`;
echo "Masukin Domain Mu Sayang"
read -p "Hostname :" host
echo "IP=$host" >> /root/ipvps.conf
MYIP=$(dig @resolver1.opendns.com -t A -4 myip.opendns.com +short)
MYIP2="s/xxxxxxxxx/$MYIP/g";
NET=$(ip -o $ANU -4 route show to default | awk '{print $5}');
source /etc/os-release
ver=$VERSION_ID

#detail nama perusahaan
country=Indonesia
state=Indonesia
locality=Indonesia
organization=wildyvpn.my.id
organizationalunit=wildyvpn.my.id
commonname=wildyvpn.my.id
email=support@wildyvpn.my.id
