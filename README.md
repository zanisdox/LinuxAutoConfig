**Python BS4**
```python
from urllib.request import Request, urlopen
from bs4 import BeautifulSoup
import requests

site = ""
hdr = {'User-Agent': 'Mozilla/5.0'}
req = Request(site, headers=hdr)
page = urlopen(req)
soup = BeautifulSoup(page)
object = soup.findAll("a", {'class': "some-class"})
```


**ADB and Fastboot**
```sh
sudo update-alternatives --install "/usr/bin/....." "....." "PATH/TO/PACKAGE" 1
sudo update-alternatives --set "....." PATH/TO/PACKAGE
```

**Adaptive Sound**
```sh
adb shell device_config put device_personalization_services AdaptiveAudio__enable_adaptive_audio true 
adb shell device_config put device_personalization_services AdaptiveAudio__show_promo_notification true
```

**Motion Sense Pixel 4**
```sh
adb shell device_config put oslo mcc_whitelist vn
adb shell device_config set_sync_disabled_for_tests persistent
adb shell device_config put oslo media_app_whitelist ~com.google.android.youtube~

#bad arguments
adb shell device_config get_sync_disabled_for_tests
adb shell device_config set_sync_disabled_for_tests persistent
```

**DNF Tweaks** 
```sh
echo 'fastestmirror=True' | sudo tee -a /etc/dnf/dnf.conf
echo 'max_parallel_downloads=10' | sudo tee -a /etc/dnf/dnf.conf
```

**Xorg Session**
- add 'DefaultSession=gnome-xorg.desktop'
- add 'DefaultSession=gnome-xorg.desktop'
to custom.conf
```sh
sudo nano /etc/gdm/custom.conf
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
