#Remove Sources System list and replace it with a custom list
cd /etc/apt/
rm sources.list
wget https://raw.githubusercontent.com/BeyondLogan/Sources/main/sources.list
cd

#update and upgrade os
apt update
apt upgrade -y

# Install Packages
apt install gnome-session gnome-terminal nano curl wget firefox-esr qemu-system qemu-user-static libvirt-clients bridge-utils virt-manager ovmf python3 python3-full python3-tk pip tint2 gnome-tweaks dolphin nautilus -y

# Download Network Config Fix
cd
cd /etc/NetworkManager/
rm NetworkManager.conf
wget https://raw.githubusercontent.com/BeyondLogan/PortalOS/main/SYSConfig/NetworkManager.conf

#Done
echo
echo
echo If everything downloaded fine with no issue, run the reboot command
echo
echo