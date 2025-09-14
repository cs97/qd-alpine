#!/bin/sh

USER=""

apk add doas 

echo 'permit :wheel' > /etc/doas.d/doas.conf 
adduser $USER wheel

#setup-desktop sway

apk add sway foot swaylock swaylockd swaybg font-dejavu grim git htop fastfetch


mkdir -p ~/.config/sway
cp /etc/sway/config ~/.config/sway/
