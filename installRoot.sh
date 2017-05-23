#!/bin/bash

function ask {
	question=$1
	read -r -p "${1} [y/N]: " REPLY

	case $REPLY in
		[yY]) return 0;;
		*) return 1;;
	esac

}

ask "Install task?" && pacman -S task
ask "Install GUI?" && pacman -S i3 xorg-server lxdm feh lxterminal
ask "Install owncloud?" && pacman -S owncloud-client
ask "Install pulse?" && pacman -S pulseaudio pamixer pavucontrol
ask "Install wifi-menu?" && pacman -S dialog
ask "Install keyring?" && pacman -S gnome-keyring libgnome-keyring libsecret seahorse
ask "Install intel ucode?" && pacman -S intel-ucode
ask "Install NetworkManager?" && pacman -S network-manager-applet networkmanager
ask "Install ssh?" && pacman -S openssh
ask "Install python?" && pacman -S python python-pip
ask "Install steam?" && pacman -S steam
ask "Install thunderbird?" && pacman -S thunderbird
ask "Install firefox?"% && pacman -S firefox
ask "Install vim?" && pacman -S vim
