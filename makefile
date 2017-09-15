.PHONY: all i3 i3status i3blocks bashrc taskrc scripts launcher ncmpc vimrc

all: i3 i3blocks bashrc taskrc scripts launcher ncmpc vimrc

i3:
	mkdir -p ~/.config/i3/
	ln -fs ${PWD}/i3config ~/.config/i3/config
i3blocks:
	mkdir -p ~/.config/i3blocks
	ln -fs ${PWD}/i3blocks ~/.config/i3blocks/config
bashrc:
	ln -fs ${PWD}/bashrc ~/.bashrc
taskrc:
	ln -fs ${PWD}/taskrc ~/.taskrc
scripts:
	mkdir -p ~/.software 
	ln -fs ${PWD}/scripts ~/.software/
	mkdir -p ~/.software/bin
	ln -fs ${PWD}/scripts/wake.sh ~/.software/bin/wake
launcher:
	mkdir -p ~/.config
	ln -fs ${PWD}/launcher.tbl ~/.config
ncmpc:
	mkdir -p ~/.ncmpc
	ln -fs ${PWD}/ncmpcConfig ~/.ncmpc/config
vimrc:
	ln -fs ${PWD}/vimrc ~/.vimrc
