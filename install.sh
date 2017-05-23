#!/bin/bash

function ask {
	question=$1
	read -r -p "${1} [y/N]: " REPLY

	case $REPLY in
		[yY]) return 0;;
		*) return 1;;
	esac

}


ask "Install i3 config?" && mkdir -p ~/.config/i3/ && ln -s $PWD/i3config ~/.config/i3/config
ask "Install i3status config?" && mkdir -p ~/.config/i3 && ln -s $PWD/i3status ~/.config/i3status/config
ask "Install .bashrc?" && ln -s $PWD/bashrc ~/.bashrc
