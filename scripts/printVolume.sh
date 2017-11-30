#!/bin/bash
COLOR="#00ff00"
if [ "$(pamixer --get-mute)" = "true" ]
then
	COLOR="#ff6600"
fi
VOLUME=$(pamixer --get-volume)%

echo $VOLUME
echo $VOLUME
echo $COLOR

case $BLOCK_BUTTON in
	1) pavucontrol & ;;
	*) ;;
esac
