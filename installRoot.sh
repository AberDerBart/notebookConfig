#!/bin/bash
source scripts/ask.sh

if ask "Install task?"; then
	pacman -S task
fi

if ask "Install GUI?"; then
	pacman -S i3 xorg-server lxdm feh lxterminal dmenu
	localectl set-x11-keymap de
	systemctl enable lxdm
fi

if ask "Install owncloud?"; then
	pacman -S owncloud-client
fi

if ask "Install pulse?"; then
	pacman -S pulseaudio pamixer pavucontrol
fi

if ask "Install wifi-menu?"; then
	pacman -S dialog
fi

if ask "Install keyring?"; then
	pacman -S gnome-keyring libgnome-keyring libsecret seahorse
fi

if ask "Install intel ucode?"; then
	pacman -S intel-ucode
fi

if ask "Install NetworkManager?"; then
	pacman -S network-manager-applet networkmanager
	systemctl enable NetworkManager
fi

if ask "Install ssh?"; then
	pacman -S openssh
fi

if ask "Install python?"; then
	pacman -S python python-pip
fi

if ask "Install steam?"; then
	pacman -S steam
fi

if ask "Install thunderbird?"; then
	pacman -S thunderbird
fi

if ask "Install firefox?"%; then
	pacman -S firefox
fi

if ask "Install vim?"; then
pacman -S vim
fi

