#!/bin/bash

function ask {
	question=$1
	read -r -p "${1} [y/N]: " REPLY

	case $REPLY in
		[yY]) return 0;;
		*) return 1;;
	esac

}

if ask "Install i3 config?"; then
	set -o xtrace
        mkdir -p ~/.config/i3/
        ln -s $PWD/i3config ~/.config/i3/config
	set +o xtrace
fi
if ask "Install i3status config?"; then
	set -o xtrace
        mkdir -p ~/.config/i3
	ln -s $PWD/i3status ~/.config/i3status/config
	set +o xtrace
fi
if ask "Install .bashrc?"; then
	set -o xtrace
       	ln -s $PWD/bashrc ~/.bashrc
	set +o xtrace
fi
if ask "Install scripts?"; then
	set -o xtrace
       	mkdir -p ~/.software 
	ln -s $PWD/scripts ~/.software/
	set +o xtrace
fi
