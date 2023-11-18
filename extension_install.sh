#!/bin/sh
# Extension
ex_dir="$HOME/.local/share/gnome-shell/extensions/"

echo "GnomeShell ScreenShot"
git clone "https://github.com/OttoAllmendinger/gnome-shell-screenshot.git"
cd gnome-shell-screenshot
make update_dependencies
make install
cd
rm -rf gnome-shell-screenshot

echo "Caffeine"
git clone "https://github.com/eonpatapon/gnome-shell-extension-caffeine.git"
cd gnome-shell-extension-caffeine
make build
make install
cd 
rm -rf gnome-shell-extension-caffeine

echo "Clipboard Indicator"
git clone "https://github.com/Tudmotu/gnome-shell-extension-clipboard-indicator.git" $ex_dir/clipboard-indicator@tudmotu.com

echo "Unite"
git clone https://github.com/hardpixel/unite-shell.git 
cp -r unite-shell/unite@hardpixel.eu $ex_dir
rm -rf unite-shell

echo "LAN IP Address"
git clone "https://github.com/Josholith/gnome-extension-lan-ip-address.git" $ex_dir/lan-ip-address@mrhuber.com

echo "Net speed Simplified"
git clone "https://github.com/prateekmedia/netspeedsimplified.git"
cd netspeedsimplified
make install
cd 
rm -rf netspeedsimplified

echo "Dash to Dock"
sudo dnf -y install sassc gettext
git clone "https://github.com/micheleg/dash-to-dock.git"
cd dash-to-dock
make
make install
cd 
rm -rf dash-to-dock

echo "Done"
echo "Logout to enable extensions"