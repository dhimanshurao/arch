#!/bin/bash

sudo timedatectl set-ntp true
sudo hwclock --systohc

sudo reflector --country india,taiwan,japan,bangladesh,russia,thailand,australia,germany,china --age 12 --latest 200 --protocol https --sort delay --save /etc/pacman.d/mirrorlist
sudo echo "--country india,taiwan,japan,bangladesh,russia,thailand,australia,germany,china --age 12 --latest 200 --protocol https --sort delay" >> /etc/xdg/reflector/reflector.conf


#git clone https://aur.archlinux.org/pikaur.git
#cd pikaur/
#makepkg -si --noconfirm

#pikaur -S --noconfirm system76-power
#sudo systemctl enable --now system76-power
#sudo system76-power graphics integrated
#pikaur -S --noconfirm gnome-shell-extension-system76-power-git
#pikaur -S --noconfirm auto-cpufreq
#sudo systemctl enable --now auto-cpufreq

sudo pacman -S --noconfirm xorg lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings xfce4 xfce4-goodies firefox arc-gtk-theme arc-icon-theme obs-studio vlc



sudo systemctl enable lightdm
/bin/echo -e "\e[1;32mREBOOTING IN 5..4..3..2..1..\e[0m"
sleep 5
sudo reboot
