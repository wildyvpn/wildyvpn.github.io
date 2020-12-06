#!/bin/bash
#script created by wildyvpn
cd
clear
echo -e "=========================================="
echo -e "*      Script Created By WILDYVPN        *"
echo -e "=========================================="
read -p "* Username L2TP nya   :" l2tpuser       "*"
read -p "* Password L2TP nya   :" passl2tp       "*"
read -p "* Masa Aktif          :" expl2tp        "*"
echo -e "=========================================="
echo -e "*      Script Created By WILDYVPN        *"
echo -e "=========================================="
echo -e "\"$l2tpuser\" l2tpd \"$passl2tp\" *" >> /etc/ppp/chap-secrets
clear
echo -e "========================================"
echo -e "*   SCRIPT AUTO INSTALL BY WILDY VPN   *"
echo -e "========================================"
echo -e ""
echo -e "========================================"
echo -e "==  Di Bawah Ini Informasi Akun Anda  =="
echo -e "========================================"
echo -e "Username         :" $l2tpuser 
echo -e "IPSec-PSK        :  wildyvpn"
echo -e "Password         :" $passl2tp
echo -e "Host / IP Server :" $Domain
echo -e "     Masa Aktif Akun Anda :" $expl2tp
echo -e "========================================"
echo -e "         Script By WILDY VPN "
echo -e "========================================"

