wget 'https://dl.google.com/android/repository/platform-tools-latest-linux.zip'
unzip platform-tools-latest-linux.zip -d $(echo /home/$(whoami))
sudo update-alternatives --install "/usr/bin/adb" "adb" "platform-tools/adb" 1
sudo update-alternatives --set "adb" "platform-tools/adb"

sudo update-alternatives --install "/usr/bin/fastboot" "fastboot" "platform-tools/fastboot" 1
sudo update-alternatives --set "fastboot" "platform-tools/fastboot"
rm platform-tools-latest-linux.zip
rm adb_fastboot.sh
