** Only using on RPMs **


**DNF "maybe" good tweaks** 
```sh
echo 'fastestmirror=True' | sudo tee -a /etc/dnf/dnf.conf
echo 'max_parallel_downloads=10' | sudo tee -a /etc/dnf/dnf.conf
```

**Xorg Session**
- add 'DefaultSession=gnome-xorg.desktop'
- uncomment '#WaylandEnable=false'
in custom.conf
```sh
sudo nano /etc/gdm/custom.conf
```
