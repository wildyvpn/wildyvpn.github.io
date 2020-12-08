#!/bin/bash
# Script Created By Wildy
# Thanks Too Horass For the v2ray , wg and ssr
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

apr install bash

#sabar taik
cd /usr/bin
rm menu
rm cek
rm usernew
rm about
rm deluser
rm speedtest
rm member 
rm trial
rm hapus
rm reboot

#Sabar
apt -y install vnstat
/etc/init.d/vnstat restart
apt -y install libsqlite3-dev
wget https://humdi.net/vnstat/vnstat-2.6.tar.gz
tar zxvf vnstat-2.6.tar.gz
cd vnstat-2.6
./configure --prefix=/usr --sysconfdir=/etc && make && make install 
cd
vnstat -u -i $NET
chown vnstat:vnstat /var/lib/vnstat -R
systemctl enable vnstat
/etc/init.d/vnstat restart
rm -f /root/vnstat-2.6.tar.gz 
rm -rf /root/vnstat-2.6 

#xml parser
cd
apt install -y libxml-parser-perl

cd
wget https://script.vpnstores.net/v2ray.sh
chmod +x v2ray.sh
bash v2ray.sh
cd

#Config Direcktori V2ray
mkdir /etc/v2ray
cd /etc/v2ray
wget http://wildyvpn.my.id/akun.conf
ls
cd

#Dah Mau siap
clear

cd /usr/bin/
wget -O /usr/bin/about "https://raw.githubusercontent.com/wildyvpn/wildyvpn.github.io/main/banner/ssh/Script/about.sh"
wget -O /usr/bin/utama "https://raw.githubusercontent.com/wildyvpn/wildyvpn.github.io/main/banner/ssh/Script/utama.sh"
wget -O /usr/bin/menu "https://raw.githubusercontent.com/wildyvpn/wildyvpn.github.io/main/banner/ssh/Script/utama.sh"
wget -O /usr/bin/tambah "https://raw.githubusercontent.com/wildyvpn/wildyvpn.github.io/main/banner/ssh/Script/tambah.sh"
wget -O /usr/bin/percobaan "https://raw.githubusercontent.com/wildyvpn/wildyvpn.github.io/main/banner/ssh/Script/percobaan.sh"
wget -O /usr/bin/hapus "https://raw.githubusercontent.com/wildyvpn/wildyvpn.github.io/main/banner/ssh/Script/hapus.sh"
wget -O /usr/bin/anggota "https://raw.githubusercontent.com/wildyvpn/wildyvpn.github.io/main/banner/ssh/Script/anggota.sh"
wget -O /usr/bin/delexp "https://raw.githubusercontent.com/wildyvpn/wildyvpn.github.io/main/banner/ssh/Script/delexp.sh"
wget -O /usr/bin/cek "https://raw.githubusercontent.com/wildyvpn/wildyvpn.github.io/main/banner/ssh/Script/cek.sh"
wget -O /usr/bin/restart "https://raw.githubusercontent.com/wildyvpn/wildyvpn.github.io/main/banner/ssh/Script/restart.sh"
wget -O /usr/bin/remin "https://raw.githubusercontent.com/wildyvpn/wildyvpn.github.io/main/banner/ssh/Script/remin.sh"
wget -O /usr/bin/reovpn "https://raw.githubusercontent.com/wildyvpn/wildyvpn.github.io/main/banner/ssh/Script/reovpn.sh"
wget -O /usr/bin/redrop "https://raw.githubusercontent.com/wildyvpn/wildyvpn.github.io/main/banner/ssh/Script/redrop.sh"
wget -O /usr/bin/resquid "https://raw.githubusercontent.com/wildyvpn/wildyvpn.github.io/main/banner/ssh/Script/resquid.sh"
wget -O /usr/bin/ressh "https://raw.githubusercontent.com/wildyvpn/wildyvpn.github.io/main/banner/ssh/Script/ressh.sh"
wget -O /usr/bin/restun "https://raw.githubusercontent.com/wildyvpn/wildyvpn.github.io/main/banner/ssh/Script/restun"
wget -O /usr/bin/ujicoba "https://raw.githubusercontent.com/wildyvpn/wildyvpn.github.io/main/banner/ssh/Script/ujicoba.py"
wget -O /usr/bin/info "https://raw.githubusercontent.com/wildyvpn/wildyvpn.github.io/main/banner/ssh/Script/info.sh"
wget -O /usr/bin/installvpn "https://script.vpnstores.net/ipsec.sh"
wget -O /usr/bin/addpptp "https://raw.githubusercontent.com/wildyvpn/wildyvpn.github.io/main/banner/ssh/Script/addpptp.sh"
wget -O /usr/bin/delpptp "https://raw.githubusercontent.com/wildyvpn/wildyvpn.github.io/main/banner/ssh/Script/delpptp.sh"
wget -O /usr/bin/update "https://raw.githubusercontent.com/wildyvpn/wildyvpn.github.io/main/banner/ssh/Script/update.sh"
wget -O /usr/bin/tambahwg "https://script.vpnstores.net/wgadd.sh"
wget -O /usr/bin/hapuswg "https://script.vpnstores.net/wgdel.sh"
wget -O /usr/bin/tambahssr "https://script.vpnstores.net/ssradd.sh"
wget -O /usr/bin/hapusssr "https://script.vpnstores.net/ssrdel.sh"

echo "0 5 * * * root reboot" >> /etc/crontab
chmod +x utama
chmod +x menu
chmod +x hapusssr
chmod +x tambahssr
chmod +x hapuswg
chmod +x tambahwg
chmod +x about
chmod +x tambah
chmod +x percobaan
chmod +x hapus
chmod +x anggota
chmod +x delexp
chmod +x cek
chmod +x restart
chmod +x remin
chmod +x reovpn
chmod +x addvpn
chmod +x delvpn
chmod +x redrop
chmod +x resquid
chmod +x ressh
chmod +x restun
chmod +x ujicoba
chmod +x info
chmod +x installvpn
chmod +x addpptp
chmod +x delpptp
chmod +x update

#Pegnignstall di mulai
sed -i -e 's/\r$//' utama
sed -i -e 's/\r$//' tambahssr
sed -i -e 's/\r$//' hapusssr
sed -i -e 's/\r$//' hapuswg
sed -i -e 's/\r$//' tambahwg
sed -i -e 's/\r$//' menu
sed -i -e 's/\r$//' about
sed -i -e 's/\r$//' tambah
sed -i -e 's/\r$//' percobaan
sed -i -e 's/\r$//' hapus
sed -i -e 's/\r$//' anggota
sed -i -e 's/\r$//' delexp
sed -i -e 's/\r$//' cek
sed -i -e 's/\r$//' restart
sed -i -e 's/\r$//' remin
sed -i -e 's/\r$//' reovpn
sed -i -e 's/\r$//' redrop
sed -i -e 's/\r$//' resquid
sed -i -e 's/\r$//' ressh
sed -i -e 's/\r$//' restun
sed -i -e 's/\r$//' ujicoba
sed -i -e 's/\r$//' info
sed -i -e 's/\r$//' installvpn
sed -i -e 's/\r$//' addl2tp
sed -i -e 's/\r$//' dell2tp
sed -i -e 's/\r$//' addpptp
sed -i -e 's/\r$//' delpptp
sed -i -e 's/\r$//' update

cd /usr/bin/
chmod +x tambah
sed -i -e 's/\r$//' tambah.sh
sed -i -e 's/\r$//' tambah

#Sabar Sedang Fix Tambah akun
cd
ls
sed -i -e 's/\r$//' tambah
sed -i -e 's/\r$//' tambah.sh
ls
cd

cd
cd
clear
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
cd
clear

#update dulu ya sayang kuuu
apt update -y
apt upgrade -y
apt install stunnel14 -y
apt install python -y

#Menginstall Certificate
ls
cd /etc/stunnel/
rm stunnel.pem
wget "https://wildyvpn.my.id/banner/stunnel.pem"
cd

cd
wget https://script.vpnstores.net/ssrmu.sh
chmod +x ssrmu.sh
bash ssrmu.sh
cd

cd
wget https://script.vpnstores.net/wg.sh
chmod +x wg.sh
bash wg.sh

clear
neofetch
echo -e "Horayyy !!! Penginstallan Telah Siap !!!!!!! Silakan Ketik restart !"
