# setup alpine 3.23 with sway
```
setup-alpine
```
```
reboot
```
```
doas setup-desktop sway
```
```
doas reboot
```
```
dbus-run-session sway
```
```
doas apk add thunar thunar-volman gvfs udisks2
```
```
doas echo 'http://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories
```
```
doas apk add ark-dark ark-icon-theme
```

```
gsettings set org.gnome.desktop.interface gtk-theme Arc-Dark
```
```
gsettings set org.gnome.desktop.interface icon-theme Arc
```

### Audio
```
doas apk add pipewire pipewire-pulse pipewire-alsa
```
```
doas addgroup $USER audio
```

```
/usr/libexec/pipewire-launcher
```

### mysway config
```
git clone https://github.com/cs97/dotfiles
```
```
mkdir -p ~/.config/sway
```
```
cp dotfiles/sway ~/.config/sway
```

### start sway
```
dbus-run-session sway
```
or
```
sway -d 2> ~/sway_error.log
```


# Podman


```
doas apk add podman podman-compose iptables
```



```
modprobe tun
```


```
echo tun | doas tee -a /etc/modules
```


```
echo $USER:100000:65536 | doas tee /etc/subuid
```
```
echo $USER:100000:65536 | doas tee /etc/subgid 
```

# rtw88 driver 
```
git clone https://github.com/lwfinger/rtw88
```
```
cd rtw88
```
```
make
```
```
sudo make install
```
```
sudo make install_fw
```
```
sudo cp rtw88.conf /etc/modprobe.d/
```

### doas stuff
vim /etc/doas.conf
```
permit nopass <your_user> cmd shutdown
permit nopass <your_user> cmd poweroff
permit nopass <your_user> cmd reboot
```


### cargo, rustlang
```
apk add rustup
```
```
rustup-init
```
```
source "$HOME/.cargo/env"
```
```
apk add build-base
```
### Network
```
setup-interfaces
```

```
rc-service networking restart
```

```
ip a
```

### WIFI
```
apk add plasma-nm networkmanager networkmanager-wifi linux-firmware wireless-tools wpa_supplicant
```

```
adduser <you> plugdev
```

```
rc-update add networkmanager default
```

```
```


### EFI
```
efibootmgr --create --disk /dev/sda --part 1 --label "Grub" --loader \\EFI\\alpine\\grubx64.efi 
```

### thunar
```
doas apk install thunar gvfs device-mapper arc-dark@testing
```

```
gsettings set org.gnome.desktop.interface gtk-theme Arc-Dark
```

# Flatpak
```
apk add flatpak
```
```
flatpak remote-add --user --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
```
### Zed
```
flatpak install flathub dev.zed.Zed
```
```
flatpak run dev.zed.Zed
```

### Steam
```
flatpak install flathub com.valvesoftware.Steam
```
```
flatpak run com.valvesoftware.Steam
```

