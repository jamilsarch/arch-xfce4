#!/bin/bash


##### Install Arch Base And Base-Devel #######
##### Format Disk Manual And Mount It Manual #####


pacstrap /mnt base base-devel
pacstrap /mnt grub-bios
genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt
ln -sf /usr/share/zoneinfo/Europe/London /etc/localtime
hwclock --systohc
nano /etc/locale.gen  ## Uncomment en_GB.UTF-8 #####
locale-gen
echo LANG=en_GB.UTF-8 > /etc/locale.conf
echo jamsarch > /etc/hostname
echo 127.0.0.1 jamsarch.localdomain jamsarch > /etc/hosts
mkinticpio -p linux
passwd
grub-install --target=i386-pc /dev/sda1
grub-mkconfig -o /boot/grub/grub.cfg
exit
umount -R /mnt
reboot


 
echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"