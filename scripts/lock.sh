#!/bin/bash

setxkbmap -rules evdev -model evdev -layout us -variant altgr-intl -option ctrl:nocaps
pkill -RTMIN+1 i3blocks

i3lock -c 444444
