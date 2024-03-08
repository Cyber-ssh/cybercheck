#!/bin/bash
vermelho="\e[31m"
verde="\e[32m"
amarelo="\e[33m"
azul="\e[34m"
roxo="\e[38;2;128;0;128m"
reset="\e[0m"

rm -rf /root/cybercheck/
rm -f /usr/local/bin/cybercheck
pkill -9 -f "/root/cybercheck/checkuser.py"

apt update && apt upgrade -y && apt install python3 git -y
git clone https://github.com/Cyber-ssh/cybercheck.git
chmod +x /root/cybercheck/checkm.sh
ln -s /root/cybercheck/checkm.sh /usr/local/bin/check

clear
echo -e "Para iniciar o menu digite: ${verde}check${reset}"
