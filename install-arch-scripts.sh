#!/bin/bash


####Arch Linux Install Scripts Xfce4 Desktop Environment #######

sudo systemctl enable dhcpcd
sudo systemctl start dhcpcd
sudo systemctl restart dhcpcd
sudo pacman -Syyu
sudo pacman -S xorg
sudo pacman -S xfce4 xfce4-goodies  
sudo pacman -S xterm xorg-xclock xorg-twm xorg-xinit xorg-server
sudo pacman -S lightdm lightdm-gtk-greeter accountsservice
sudo systemctl enable lightdm
sudo systemctl enable accounts-daemon
sudo useradd -m -g users -G wheel -s /bin/bash jamil
sudo pacman -S thunar-meditags-plugin gvfs file-roller xdg-user-dirs
sudo pacman -S cmatrix terminator qbittorrent gufw ufw linux-kernel pulseaudio pulseaudio-alsa pavucontrol
sudo pacman -S screenfetch simple-scan firefox opera geary plank libreoffice-fresh
sudo pacman -S nvidia nvidia-settings 
sudo nvidia-xconfig
sudo pacman -S bluez bluez-utils pulseaudio-bluetooth bluez-utils bluez-libs gnome-bluetooth blueberry bluez-tools
sudo systemctl enable bluetooth.service
sudo sysytemctl start bluetooth.service




