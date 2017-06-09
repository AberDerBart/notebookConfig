.PHONY: all i3 i3status i3blocks bashrc taskrc scripts launcher ncmpc

all: i3 i3blocks bashrc taskrc scripts launcher ncmpc

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
launcher:
	mkdir -p ~/.config
	ln -fs ${PWD}/launcher.tbl ~/.config
ncmpc:
	mkdir -p ~/.ncmpc
	ln -fs ${PWD}/ncmpcConfig ~/.ncmpc/config
