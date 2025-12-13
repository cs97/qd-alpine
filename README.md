# setup
```

```

```
./qd-alpine.sh
```




start sway
```
dbus-run-session sway
```
or
```
sway -d 2> ~/sway_error.log
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
### Steam
```
flatpak install flathub com.valvesoftware.Steam
```
```
flatpak run com.valvesoftware.Steam
```

