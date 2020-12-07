#!/bin/bash
#Script Created By WILDYVPN
clear
neofetch
IP=`dig +short myip.opendns.com @resolver1.opendns.com`
Login=trial`</dev/urandom tr -dc X-Z0-9 | head -c4`
hari="1"
Pass=`</dev/urandom tr -dc a-f0-9 | head -c9`
clear
useradd -e `date -d "$hari days" +"%Y-%m-%d"` -s /bin/false -M $Login
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
clear
echo -e "===================================="
echo -e "= Di Bawah Ini Informasi Akun Anda ="
echo -e "===================================="
echo -e "Host / IP Server :"$IP
echo -e "Username         :"$Login
echo -e "Password         :"$Pass
echo -e "===================================="
echo -e "Port OpenSSH     : 22,2020"
echo -e "Port SSL/TLS     : 443,29,400"
echo -e "Port Dropbear    : 123,456,789,443"
echo -e "Port Squid       : 8080,3128"
echo -e "Badvpn           : 7000-8000"
echo -e "===================================="
echo -e "=   Masa Aktif Akun Anda : 1 Jam   ="
echo -e "===================================="
echo -e "         Script By WILDY VPN "
echo -e "===================================="
