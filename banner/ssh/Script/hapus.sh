#!/bin/bash
# Script Created By WILDYVPN
clear
neofetch
echo -e "=================== Informasi ========================"
echo -e "*                                                    *"
echo -e "*           Script Created By WILDYVPN               *"
echo -e "*               WA = 0896-3528-4000                  *"
echo -e "*                                                    *"
echo -e "=================== Informasi ========================"
echo -e ""
echo -e "======================================================"
read -e "Masukan Username Yang Mau Di Hapus :" Pengguna
echo -e "======================================================"
clear
if getent passwd $Pengguna > /dev/null 2>&1; then
        userdel $Pengguna
        echo -e "===================== Hore ! ========================="
        echo -e "* Hore : Username $Pengguna Telah Di Hapus.          *"
        echo -e "===================== Hore ! ========================="
else
        echo -e "=================== Yah Eror ! ======================="
        echo -e "* Maaf : Username $Pengguna Tidak Dapat Di Temukan.  *"
        echo -e "=================== Yah Eror ! ======================="
fi
