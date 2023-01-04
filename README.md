**Fedora Custom**
===================================
**Motion Sense**
adb shell device_config put device_personalization_services AdaptiveAudio__enable_adaptive_audio true 
adb shell device_config put device_personalization_services AdaptiveAudio__show_promo_notification true
adb shell device_config put oslo mcc_whitelist vn
adb shell device_config set_sync_disabled_for_tests persistent


**1. Fedora DNF Tweaks** 
```sh
echo 'fastestmirror=True' | sudo tee -a /etc/dnf/dnf.conf
echo 'max_parallel_downloads=10' | sudo tee -a /etc/dnf/dnf.conf
echo 'deltarpm=True' | sudo tee -a /etc/dnf/dnf.conf
```

**2. Fedora RPM Fusion**
```sh
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
```

**3. Upgrade System**
```sh
sudo dnf upgrade --refresh
```

**4. Install Preload**
```sh
sudo dnf copr enable elxreno/preload -y && sudo dnf install preload -y
```

**4. Firmware**
```sh
cd ~/Documents && git clone https://kernel.googlesource.com/pub/scm/linux/kernel/git/firmware/linux-firmware.git
sudo cp ~/Documents/linux-firmware/amdgpu/* /lib/firmware/amdgpu && sudo update-initramfs -k all -u -v
```

**5. Hostname**
```sh
sudo hostnamectl set-hostname "new"
sudo nano /etc/hosts
127.0.0.1    Hostname
```

**6. Install Soft**
```sh
sudo update-alternatives --install "/usr/bin/....." "....." "PATH/TO/PACKAGE" 1
sudo update-alternatives --set "....." PATH/TO/PACKAGE
```

**7. Dnfdragona**
```sh
sudo dnf install dnfdragora
```
**8. Bleachbit**
```sh
sudo dnf install bleachbit
```

**9. Timeshift**
```
sudo dnf install timeshift
```
**10. Font**
```sh
sudo dnf copr enable dawid/better_fonts -y
sudo dnf install fontconfig-font-replacements -y
sudo dnf install fontconfig-enhanced-defaults -y
sudo fc-cache -v
```

**11. Fedora Xorg Session**
```sh
echo 'WaylandEnable=false' | sudo tee -a /etc/gdm/custom.conf
echo 'DefaultSession=gnome-xorg.desktop' | sudo tee -a /etc/gdm/custom.conf
```

**Zsh install and custom**
**Install**
```sh
sudo dnf -y install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
**Custom**
```sh
rm -rf MesloLGS_NF
mkdir MesloLGS_NF
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf -O MesloLGS_NF/MesloLGS_NF_Regular.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf -O MesloLGS_NF/MesloLGS_NF_Bold.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf -O MesloLGS_NF/MesloLGS_NF_Italic.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf -O MesloLGS_NF/MesloLGS_NF_Bold_Italic.ttf

sudo cp -r MesloLGS_NF /usr/share/fonts
sudo fc-cache -v

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh-custom/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.zsh-custom/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.zsh-custom/powerlevel10k
echo 'source ~/.zsh-custom/zsh-autosuggestions/zsh-autosuggestions.zsh' >> ~/.zshrc
echo 'source ~/.zsh-custom/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' >> ~/.zshrc
echo 'source ~/.zsh-custom/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
```
