#!/bin/bash
#script created by wildyvpn
clear
neofetch
echo -e "========================================================"
echo -e "*              Script Created By WILDYVPN              *"
echo -e "========================================================"
read -p "Masukin Username yang mau di hapus SayangKuu: " username
grep -E "^$username" /etc/ppp/chap-secrets >/dev/null
username="/$username/d";
sed -i $username /etc/ppp/chap-secrets
sed -i '/^$/d' /etc/ppp/chap-secrets
clear
echo -e "=========================================="
echo -e "*      Script Created By WILDYVPN        *"
echo -e "=========================================="
echo -e " Username =" $username "Berhasil Di Hapus"
echo -e "=========================================="
echo -e "*      Script Created By WILDYVPN        *"
echo -e "=========================================="
