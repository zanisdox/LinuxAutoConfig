#!/bin/sh

adb_path="$HOME/platform-tools/adb"
fastboot_path="$HOME/platform-tools/fastboot"

if [ -d "$HOME/platform-tools" ]; then
	rm -rf "$HOME/platform-tools"
fi

wget 'https://dl.google.com/android/repository/platform-tools-latest-linux.zip'
unzip platform-tools-latest-linux.zip -d $HOME
sudo update-alternatives --install "/usr/bin/adb" "adb" $adb_path 1
sudo update-alternatives --set "adb" $adb_path
sudo update-alternatives --install "/usr/bin/fastboot" "fastboot" $fastboot_path 1
sudo update-alternatives --set "fastboot" $fastboot_path

rm platform-tools-latest-linux.zip
rm adb_fastboot.sh
