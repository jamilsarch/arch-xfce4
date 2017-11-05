#!/bin/bash


####Arch Linux Install Scripts Xfce4 Desktop Environment #######


sudo pacman -Syyu
sudo pacman -S xorg
sudo pacman -S xfce4 xfce4-goodies xterm xorg-xclock xorg-twm xorg-xinit xorg-server
sudo pacman -S lightdm lightdm-gtk-greeter accountsservice
sudo systemctl enable lightdm
sudo systemctl enable accounts-daemon
sudo useradd -m -g users -G wheel -s /bin/bash jamil
passwd jamil
sudo pacman -S thunar-meditags-plugin gvfs file-roller xdg-user-dirs cmatrix terminator qbittorrent gufw ufw linux-headers pulseaudio pulseaudio-alsa 
sudo pacman -S screenfetch simple-scan firefox opera geary plank libreoffice-fresh pavucontrol nvidia nvidia-settings powerline2 python2-powerline    
sudo pacman -S bluez bluez-utils pulseaudio-bluetooth bluez-utils bluez-libs gnome-bluetooth blueberry bluez-tools zsh vim virtualbox
sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service
sudo nvidia-xconfig






