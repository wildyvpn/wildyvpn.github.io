#!/bin/bash
# Script Remake By WILDY VPN
clear
clear
clear
neofetch
sleep 5
echo -e "=========================================="
echo -e "*      Script Created By WILDYVPN        *"
echo -e "=========================================="
echo -e ""
echo -e "Bersabar Script akan di jalankan dalam waktu 5 Detik !!!!!"
echo -e ""
sleep 1
echo -e "Bersabar Script akan di jalankan dalam waktu 4 Detik !!!!!"
echo -e ""
sleep 1
echo -e "Bersabar Script akan di jalankan dalam waktu 3 Detik !!!!!"
echo -e ""
sleep 1
echo -e "Bersabar Script akan di jalankan dalam waktu 2 Detik !!!!!"
echo -e ""
sleep 1
echo -e "Bersabar Script akan di jalankan dalam waktu 1 Detik !!!!!"
echo -e "gassskannnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn"

#sabar taik
cd /usr/bin
rm menu
rm cek
rm usernew
rm about

wget -O /usr/bin/cek "https://raw.githubusercontent.com/wildyvpn/wildyvpn.github.io/main/banner/ssh/Script/cek.sh"
wget -O /usr/bin/tambah "https://raw.githubusercontent.com/wildyvpn/wildyvpn.github.io/main/banner/ssh/Script/tambah.sh"
wget -O /usr/bin/about "https://raw.githubusercontent.com/wildyvpn/wildyvpn.github.io/main/banner/ssh/Script/about.sh"
wget -O /usr/bin/restart "https://wildyvpn.my.id/restart.sh"
wget -O /usr/bin/installvpn "https://script.vpnstores.net/ipsec.sh"
wget -O /usr/bin/menu "https://raw.githubusercontent.com/wildyvpn/wildyvpn.github.io/main/banner/ssh/Script/utama.sh"

echo "0 5 * * * root reboot" >> /etc/crontab
chmod +x menu
chmod +x installvpn
chmod +x cek
chmod +x menu
chmod +x about
chmod +x restart

#Pegnignstall di mulai
sed -i -e 's/\r$//' menu
sed -i -e 's/\r$//' installvpn
sed -i -e 's/\r$//' cek
sed -i -e 's/\r$//' about
sed -i -e 's/\r$//' restart

#Meningstall Banner
cd /etc/
rm issue.net
wget -O /etc/issue.net "https://wildyvpn.my.id/issue.net" && echo "Banner /etc/issue.net" >>/etc/ssh/sshd_config && sed -i 's@DROPBEAR_BANNER=""@DROPBEAR_BANNER="/etc/issue.net"@g' /etc/default/dropbear
ls
cd
cd /etc/
ls
cd /etc/
ls
ls
ls
ls
ls
neofetch
cd

#Menginstall Certificate
ls
cd /etc/stunnel/
rm stunnel.pem
wget "https://wildyvpn.my.id/banner/stunnel.pem"
cd

echo -e "Horayyy !!! Penginstallan Telah Siap !!!!!!! Silakan Ketik restart !"