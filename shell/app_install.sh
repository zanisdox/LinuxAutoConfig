#!/bin/sh

distro=$(source /etc/os-release && echo $ID)
if [ $distro = fedora ] || [ $distro = redhat ] || [ $distro = rocky ]; then
    install="dnf -y install"
    remove="dnf -y remove"
    update="dnf -y check-update; dnf -y upgrade --refresh; dnf -y autoremove"
    addrepo="dnf -y config-manager --add-repo"

# Remove LibreOffice
$remove "libreoffice*"

# Repo
$install -y https://mirrors.rpmfusion.org/free/el/rpmfusion-free-release-$(rpm -E %rhel).noarch.rpm -y
$install -y https://mirrors.rpmfusion.org/nonfree/el/rpmfusion-nonfree-release-$(rpm -E %rhel).noarch.rpm -y
$addrepo https://download.opensuse.org/repositories/home:lamlng/Fedora_36/home:lamlng.repo

# Install
$install zsh gnome-tweaks gnome-screenshot gthumb gimp make git ibus-bamboo
$update
