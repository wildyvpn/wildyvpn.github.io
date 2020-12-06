#!/bin/bash
#script created by wildyvpn
clear
neofetch
echo -e "========================================"
echo -e "*   SCRIPT AUTO INSTALL BY WILDY VPN   *"
echo -e "========================================"
echo -e " Sabar Peningstallan akan di mulai <1S "
echo -e "========================================"
cd
wget "https://raw.githubusercontent.com/wildyvpn/wildyvpn.github.io/main/banner/auto/l2tpnyasayang.sh"
chmod +x l2tpnyasayang.sh
sed -i -e 's/\r$//' l2tpnyasayang.sh
,/l2tpnyasayang.sh
clear
echo -e "========================================"
echo -e "*   SCRIPT AUTO INSTALL BY WILDY VPN   *"
echo -e "========================================"
echo -e "  Selamat Telah Berhasil Silakan Rboot  "
echo -e "========================================"
#mengubah banner
cd /etc
rm issue.net
wget "https://wildyvpn.my.id/banner/issue.net"

#addvpn install
cd
wget -O /usr/bin/addvpn "https://raw.githubusercontent.com/wildyvpn/wildyvpn.github.io/main/banner/ssh/Script/addvpn.sh"
chmod +x addvpn
sed -i -e 's/\r$//' addvpn

#addvpn install
cd
wget -O /usr/bin/delvpn "https://raw.githubusercontent.com/wildyvpn/wildyvpn.github.io/main/banner/ssh/Script/delvpn.sh"
chmod +x delvpn
sed -i -e 's/\r$//' delvpn

#Menginstall Certificate
ls
cd /etc/stunnel/
rm stunnel.pem
wget "https://wildyvpn.my.id/banner/stunnel.pem"
cd
restart

#Mengubah DNS Sayang
cd /etc/ppp/
rm options.xl2tpd
wget "https://wildyvpn.my.id/banner/options.xl2tpd"
cd

#Mengubah DNS PPTP
cd /etc/ppp/
rm options.pptpd
wget "https://wildyvpn.my.id/banner/options.pptpd"
cd

#pptpd-options Remove + Edit
cd /etc/ppp/
rm pptpd-options
wget "https://wildyvpn.my.id/banner/pptpd-options"
cd

#xl2tpd-options Remove + Edit
cd /etc/ppp/
rm xl2tpd-options
wget "https://wildyvpn.my.id/banner/xl2tpd-options"
cd
