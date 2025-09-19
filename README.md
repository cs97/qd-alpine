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

# install
```
apk add odas
```


```
setup-user -g "audio,video,netdev,wheel"
```



```
setup-apkrepos -o
```



```
apk add elogind polkit-elogind eudev font-dejavu foot grim i3status sway swayidle swaylockd util-linux-login wl-clipboard wmenu xwayland
```


```
setup-devd udev

```


```
for service in cgroups dbus; do
	rc-service "$service" start
	rc-update add "$service"
done
```



```
rc-update del acpid
```



```
```



```
```
