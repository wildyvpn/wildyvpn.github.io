#!/bin/bash
#script created by wildyvpn.my.id
neofetch
echo -e "=========================================="
echo -e "*      Script Created By WILDYVPN        *"
echo -e "=========================================="
read -p " Username SSH / OVPN  :" Login
read -p " Password SSH / OVPN  :" Pass
read -p " Masa Aktif           :" masaaktif
echo -e "=========================================="
echo -e "*      Script Created By WILDYVPN        *"
echo -e "=========================================="
echo -e ""
IP=`dig +short myip.opendns.com @resolver1.opendns.com`
useradd -e `date -d "$masaaktif days" +"%Y-%m-%d"` -s /bin/false -M $Login
exp="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
echo -e "Script Auto Install By WILDY SHEVERANDO"
clear
echo -e "========================================"
echo -e "*   SCRIPT AUTO INSTALL BY WILDY VPN   *"
echo -e "========================================"
echo -e ""
sleep 2
clear
echo -e "============================="
echo -e "     Informasi Akun Anda     "
echo -e "============================="
echo -e "Host.          =" $IP
echo -e "Username.      =" $Login
echo -e "Password.      =" $Pass
echo -e "============================="
echo -e "Port OpenSSH.  = 22"
echo -e "Port SSL/TLS.  = 443"
echo -e "Port Dropbear. = 80,442"
echo -e "Port Squid.    = 8080,3128"
echo -e "Badvpn.        = 7300"
echo -e "============================"
echo -e "Masa Aktif.    =" $exp
echo -e "============================"
echo -e "=   Script By WILDY VPN    ="
echo -e "============================"
