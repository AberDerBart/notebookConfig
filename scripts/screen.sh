#!/bin/bash
DISPLAYS=$(xrandr|grep " connected"|cut -d " " -f 1) 
ACTIVE=$(xrandr|grep " connected"|grep "[0-9]*x[0-9]*+[0-9]*+[0-9]*"|cut -d " " -f 1)

NUMBER=$(echo $DISPLAYS|wc -w)

if [[ "$NUMBER" == "1" ]]
then
	if [[ $ACTIVE ]]
	then
		xrandr --output $DISPLAYS --off
		echo "turning $DISPLAYS off"
	else
		xrandr --output $DISPLAYS --auto
		echo "turning $DISPLAYS on"
	fi
else
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
fi

bash ~/.software/scripts/setBg.sh
