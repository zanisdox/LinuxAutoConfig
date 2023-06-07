#!/bin/sh

sudo dnf -y remove "libreoffice*"
sudo dnf -y install zsh gnome-tweaks gnome-screenshot gthumb gimp make git
sudo dnf install -y --nogpgcheck https://mirrors.rpmfusion.org/free/el/rpmfusion-free-release-$(rpm -E %rhel).noarch.rpm -y
sudo dnf install -y --nogpgcheck https://mirrors.rpmfusion.org/nonfree/el/rpmfusion-nonfree-release-$(rpm -E %rhel).noarch.rpm -y
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf -y install code
sudo dnf -y check-update
sudo dnf -y upgrade --refresh
sudo dnf -y autoremove
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo flatpak -y install org.onlyoffice.desktopeditors          
sudo flatpak -y install com.jetbrains.PyCharm-Community
sudo dnf -y --nogpgcheck config-manager --add-repo https://download.opensuse.org/repositories/home:lamlng/Fedora_36/home:lamlng.repo
sudo dnf install ibus-bamboo
