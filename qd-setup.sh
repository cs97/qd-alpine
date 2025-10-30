#!/bin/sh

banner(){
	echo -e "\tinstall_sway \t\tinstall sway desktop"
 	echo -e "\tinstall_rust \t\tinstall rust tools"
	echo -e "\tadd_user \t\t add user with group audio,video,netdev,wheel"
}



install_wayland_sway(){

	apk add odas

	setup-apkrepos -o

	#apk add elogind polkit-elogind eudev font-dejavu foot grim i3status sway swayidle swaylockd util-linux-login wl-clipboard wmenu xwayland swaybg firefox

	apk add elogind polkit-elogind eudev font-dejavu foot grim sway swaylockd xwayland swaybg firefox vim thunar gvfs file-roller rsync

	setup-devd udev

	for service in cgroups dbus; do
		rc-service "$service" start
		rc-update add "$service"
	done

	rc-update del acpid
}

install_rust(){
	apk add rustup build-base
	rustup-init
	source "$HOME/.cargo/env"
}



case $1 in

	"install_sway") install_wayland_sway;;
	"install_rust") install_rust;;
	"add_user") setup-user -g "audio,video,netdev,wheel";;
	*) banner;;
esac

