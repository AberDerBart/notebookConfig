#!/bin/bash

LAYOUT=$(setxkbmap -print|grep xkb_symbols|cut -d "+" -f2)

function toggleLayout {
	case $LAYOUT in
		"de")  setxkbmap ara;;
		"ara") setxkbmap -rules evdev -model evdev -layout us -variant altgr-intl -option ctrl:nocaps;;
		*) setxkbmap de;;
	esac
	LAYOUT=$(setxkbmap -print|grep xkb_symbols|cut -d "+" -f2)
}

case $BLOCK_BUTTON in
	1) toggleLayout && echo $LAYOUT;;
	*) echo $LAYOUT ;;
esac

if [ "$1" = "--kill" ]
then
	pkill -RTMIN+1 i3blocks
fi
