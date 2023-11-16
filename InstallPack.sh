#Remove Sources list and replace it with a custom list
cd /etc/apt/
rm sources.list
wget https://raw.githubusercontent.com/BeyondLogan/Sources/main/sources.list
cd
clear

#update and upgrade os
apt update
apt upgrade -y

# Install packages
apt install gnome-session gnome-terminal nano curl wget firefox-esr qemu-system qemu-user-static libvirt-clients bridge-utils virt-manager ovmf python3 python3-full python3-tk pip tint2 gnome-tweaks dolphin nautilus -y
clear

#Download Network Config Fix
cd
cd /etc/NetworkManager/
rm NetworkManager.conf
wget https://raw.githubusercontent.com/BeyondLogan/PortalOS/main/NetworkManager.conf
reboot
