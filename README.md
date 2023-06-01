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
