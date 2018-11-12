#!/bin/bash

PROFILES=$(basename -a $(ls ~/.software/scripts/xrandr))

if SELECTED=$(basename -a $(ls ~/.software/scripts/xrandr) |dmenu -i)
then
	echo "Selecting profile $SELECTED"
	bash -c "bash ~/.software/scripts/xrandr/${SELECTED}"
else
	echo "canceled"
fi

bash ~/.software/scripts/setBg.sh
