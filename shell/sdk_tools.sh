#!/bin/sh
# Run in Root

# Get Username
userdir=$(pwd)
username=${userdir#"/home/"}

adb_path="$userdir/platform-tools/adb"
fastboot_path="$userdir/platform-tools/fastboot"

if [ -d "$userdir/platform-tools" ]; then
	rm -rf "$userdir/platform-tools"
fi
wget 'https://dl.google.com/android/repository/platform-tools-latest-linux.zip'
unzip platform-tools-latest-linux.zip -d $userdir
update-alternatives --install "/usr/bin/adb" "adb" $adb_path 1
update-alternatives --set "adb" $adb_path
update-alternatives --install "/usr/bin/fastboot" "fastboot" $fastboot_path 1
update-alternatives --set "fastboot" $fastboot_path
rm platform-tools-latest-linux.zip


