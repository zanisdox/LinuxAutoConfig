#!/bin/sh

# PopOS - Ubuntu
if [ -f "/usr/bin/apt" ]
then
	echo "apt founded"
	sudo apt -y remove "libreoffice*"
	sudo add-apt-repository -y ppa:bamboo-engine/ibus-bamboo
	sudo apt -y install snapd zsh gnome-tweaks gnome-screenshot ibus-bamboo gthumb gimp
	sudo apt -y autoremove
	sudo apt -y update
	sudo apt -y full-upgrade
	sudo snap install onlyoffice-desktopeditors                 
	sudo snap install pycharm-community --classic
	ibus restart
fi

# Fedora
if [ -f "/usr/bin/dnf" ]
then
	echo "dnf founded"
	sudo dnf -y remove "libreoffice*"
	sudo dnf config-manager --add-repo https://download.opensuse.org/repositories/home:lamlng/Fedora_$(rpm -E %fedora)/home:lamlng.repo
	sudo dnf -y install zsh gnome-tweaks gnome-screenshot ibus-bamboo gthumb gimp make
	sudo dnf -y autoremove
	sudo dnf -y upgrade --refresh
	sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
	sudo flatpak -y install org.onlyoffice.desktopeditors          
	sudo flatpak -y install com.jetbrains.PyCharm-Community            
	ibus restart
	sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
	sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
	sudo dnf check-update
	sudo dnf -y install code
fi
echo "oh-my-zsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


