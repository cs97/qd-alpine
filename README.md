# qd-alpine
qd alpine setup

start sway
```
dbus-run-session sway
```
or
```
sway -d 2> ~/sway_error.log
```

# doas stuff
vim /etc/doas.conf
```
permit nopass <your_user> cmd shutdown
permit nopass <your_user> cmd poweroff
permit nopass <your_user> cmd reboot
```


# cargo, rustlang
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

# stuff


# EFI
```
efibootmgr --create --disk /dev/sda --part 1 --label "Grub" --loader \\EFI\\alpine\\grubx64.efi 
```

# LAPCE
```
akp add lapce
```
### fix
```
DRI_PRIME=1 lapce ./files/
```

### zed
```
apk add libx11-dev protobuf-dev cmake alsa-lib-dev libxkbcommon-dev
```
```
export RUSTFLAGS="$RUSTFLAGS -C target-feature=-crt-static"
```
