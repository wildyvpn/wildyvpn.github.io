#!/bin/bash
#script created by wildyvpn
cd
clear
neofetch
echo -e "=========================================="
echo -e "*      Script Created By WILDYVPN        *"
echo -e "=========================================="
read -p " Username PPTP nya   :" pptpuser       
read -p " Password PPTP nya   :" passpptp       
read -p " Masa Aktif          :" expptp       
echo -e "=========================================="
echo -e "*      Script Created By WILDYVPN        *"
echo -e "=========================================="
echo -e "\"$pptpuser\" pptpd \"$passpptp\" *" >> /etc/ppp/chap-secrets
clear
echo -e "========================================"
echo -e "==  Di Bawah Ini Informasi Akun Anda  =="
echo -e "========================================"
echo -e "Host / IP Server     :" $IP
echo -e "Username             :" $pptpuser 
echo -e "Password             :" $passpptp
echo -e "Masa Aktif Akun Anda :" $expptp "Hari"
echo -e "========================================"
echo -e "         Script By WILDY VPN "
echo -e "========================================"

