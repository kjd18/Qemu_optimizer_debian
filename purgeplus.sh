#!/bin/bash
# purges debian OS while installing qemu
apt-get update --fix-missing
apt-get dist-upgrade
apt-get install git fakeroot ncurses-dev xz-utils libssl-dev bd flex libelf-dev bison build-essential gparted vlc
git clone https://github.com/LostByteSoft/Debian-10
cd Debian-10/
cd Debian_12
chmod +x remove\ ALL\ deb\ 12.5\ excep\ zzz.sh 
mv remove\ ALL\ deb\ 12.5\ excep\ zzz.sh rem.sh
./rem.sh
apt-get purge libreoffice-common
sudo apt install qemu-utils qemu-system-* libvirt-daemon-system
apt autoremove
apt purge exfalso xfburn parole
apt-get install vlc
apt-get autoremove
