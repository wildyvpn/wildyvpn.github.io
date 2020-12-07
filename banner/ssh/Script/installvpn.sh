#!/bin/bash
#script created by wildyvpn
clear
neofetch
echo -e "========================================"
echo -e "*   SCRIPT AUTO INSTALL BY WILDY VPN   *"
echo -e "========================================"
echo -e " Sabar Peningstallan akan di mulai <1S "
echo -e "========================================"
sleep 5
cd
#Meningstall L2TP dan Strongswan
apt-get update-y
apt-get upgrade -y
apt-get install xl2tpd strongswan ppp -y

#Configurasi L2TP Server
conf_bk "/etc/ipsec.conf"
cat > /etc/ipsec.conf <<EOF
conn L2TP-PSK-noNAT
dpdaction=clear
authby=secret
auto=add
keyingtries=3
ikelifetime=8h
keylife=1h
ike=aes256-sha1,aes128-sha1,3des-sha1
type=transport
left=192.168.0.254  
leftprotoport=17/1701
right=%any
rightprotoport=17/%any
EOF

#Mengberi akses kepada ip routing
echo "net.ipv4.ip_forward = 1" | tee -a /etc/sysctl.conf
echo "net.ipv4.conf.all.accept_redirects = 0" | tee -a /etc/sysctl.conf
echo "net.ipv4.conf.all.send_redirects = 0" | tee -a /etc/sysctl.conf
echo "net.ipv4.conf.default.rp_filter = 0" | tee -a /etc/sysctl.conf
echo "net.ipv4.conf.default.accept_source_route = 0" | tee -a /etc/sysctl.conf
echo "net.ipv4.conf.default.send_redirects = 0" | tee -a /etc/sysctl.conf
echo "net.ipv4.icmp_ignore_bogus_error_responses = 1" | tee -a /etc/sysctl.conf

#Configurasi PSK Key Dan IP Addreas
cat > /etc/ipsec.secrets <<EOF
#Auto Install L2TP & PPTP By Wildy Sheverando / WILDYVPN
#Script Created By Wildy Sheverando
#Jangan Di Hapus Bagian Ini!
192.168.0.254 %any : PSK "wildyvpn"
EOF

#Configurasi L2TP Sayang Ku
cat > /etc/xl2tpd/xl2tpd.conf<<EOF
[global]
ipsec saref = yes
saref refinfo = 30
;debug avp = yes
;debug network = yes
;debug state = yes
;debug tunnel = yes
[lns default]
ip range = 162.138.128.2-162.138.128.254
local ip = 162.138.128.1 
refuse pap = yes
require authentication = yes
;ppp debug = yes
pppoptfile = /etc/ppp/options.xl2tpd
length bit = yes
EOF

#Config L2TP Options
cat > /etc/ppp/options.xl2tpd<<EOF
logfd 2
logfile /var/log/xl2tpns.log
refuse-mschap-v2
refuse-mschap
ms-dns 1.1.1.1
ms-dns 1.0.0.1
asyncmap 0
auth
crtscts
idle 1800
mtu 1200
mru 1200
lock
hide-password
local
#debug
name l2tpd
proxyarp
lcp-echo-interval 30
lcp-echo-failure 4
EOF

#Menambah User Root L2TP dan PPTP dan SSTP
echo -e "\"wildyvpn\" l2tpd \"wildyvpn\" *" >> /etc/ppp/chap-secrets
echo -e "\"wildyvpn\" pptpd \"wildyvpn\" *" >> /etc/ppp/chap-secrets

#Merestart Services Dari L2TP
service xl2tpd start / restart / stop
service strongswan start / restart / stop

#Congigurasi IPTABLES RULES
echo -e "
iptables -I INPUT -p udp --dport 500 -j ACCEPT
iptables -I INPUT -p udp --dport 4500 -j ACCEPT
iptables -I INPUT -p udp -m policy --dir in --pol ipsec -m udp --dport 1701 -j ACCEPT
iptables -t nat -A POSTROUTING -j SNAT --to-source 162.138.128.254 -o enp0s3
iptables -t nat -A POSTROUTING -j SNAT --to-source 162.138.128.1 -o enp0s3
iptables -t nat -A POSTROUTING -s 162.138.128.0/24 -o eth0 -j MASQUERADE
iptables -A FORWARD -p tcp --syn -s 162.138.128.0/24 -j TCPMSS --set-mss 1356
iptables -t nat -A POSTROUTING -s 192.168.0.0/24 -o eth0 -j MASQUERADE
iptables -A FORWARD -p tcp --syn -s 192.168.0.0/24 -j TCPMSS --set-mss 1356
 ">> /etc/rc.local
 
#Menginstall PPTP Server 
apt-get install pptpd -y
apt-get update -y
apt-get upgrade -y

#Configurasi PPTP IP Addreas
localip 162.138.128.1
remoteip 162.138.128.100-200

#Configurasi PSK Key Dan IP Addreas
cat > /etc/ppp/pptpd-options<<EOF
#Auto Install L2TP & PPTP By Wildy Sheverando / WILDYVPN
#Script Created By Wildy Sheverando
#Jangan Di Hapus Bagian Ini!
ms-dns 1.1.1.1
ms-dns 1.0.0.1
EOF

/etc/init.d/pptpd restart
sudo sysctl -p
clear
neofetch
echo -e "========================================"
echo -e "*   SCRIPT AUTO INSTALL BY WILDY VPN   *"
echo -e "========================================"
echo -e "  Selamat Telah Berhasil Silakan Rboot  "
echo -e "========================================"
echo -e "  Ih Jadi Sayang LOh Sini Cium Dulu !!  "
echo -e "========================================"

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
