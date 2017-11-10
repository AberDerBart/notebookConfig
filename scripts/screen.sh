#!/bin/bash
DISPLAYS=$(xrandr|grep " connected"|cut -d " " -f 1) 

if SELECTED=$(echo $DISPLAYS|tr -s " " "\n"|dmenu -i)
then
	echo setting $SELECTED to auto
	xrandr --output $SELECTED --auto
	
	OTHERS=$(echo $DISPLAYS|tr -s " " "\n"|grep -v $SELECTED)

	if [ -n "$OTHERS" ]
	then
		echo $OTHERS
		for OTHER in $OTHERS
		do
			xrandr --output $OTHER --off
			echo turning $OTHER off
		done
	fi

else
	echo canceled
fi

bash ~/.software/scripts/setBg.sh
