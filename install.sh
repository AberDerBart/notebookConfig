#!/bin/bash
source scripts/ask.sh

if ask "Install i3 config?"; then
	set -o xtrace
        mkdir -p ~/.config/i3/
        ln -fs $PWD/i3config ~/.config/i3/config
	set +o xtrace
fi
if ask "Install i3status config?"; then
	set -o xtrace
        mkdir -p ~/.config/i3
	ln -fs $PWD/i3status ~/.config/i3status/config
	set +o xtrace
fi
if ask "Install i3blocks config?"; then
	set -o xtrace
	mkdir -p ~/.config/i3blocks
	ln -fs $PWD/i3blocks ~/.config/i3blocks/config
	set +o xtrace
fi
if ask "Install .bashrc?"; then
	set -o xtrace
       	ln -fs $PWD/bashrc ~/.bashrc
	set +o xtrace
fi
if ask "Install .taskrc?"; then
	set -o xtrace
	ln -fs $PWD/taskrc ~/.taskrc
	set +o xtrace
fi
if ask "Install scripts?"; then
	set -o xtrace
       	mkdir -p ~/.software 
	ln -fs $PWD/scripts ~/.software/
	set +o xtrace
fi
if ask "Install launcher.tbl?"; then
	set -o xtrace
	mkdir -p ~/.config
	ln -fs $PWD/launcher.tbl ~/.config
	set +o xtrace
fi
if ask "Install ncmpc config?"; then
	set -o xtrace
	mkdir -p ~/.ncmpc
	ln -fs $PWD/ncmpcConfig ~/.ncmpc/config
	set +o xtrace
fi
