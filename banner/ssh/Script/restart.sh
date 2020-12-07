#!/bin/bash
#Created By WILDY VPN
clear
neofetch
echo -e "Sabar Sedang Merestart................................."
echo -e "Created By WIldyVPN...................................."
sleep 2
service dropbear restart
service webmin restart
service squid3 restart
service openvpn restart
service ssh restart
service stunnel4 restart
service xl2tpd restart
sleep 2
echo -e "Okey Selamat Berhasil Di Restart Is Jadi Sayang........"
