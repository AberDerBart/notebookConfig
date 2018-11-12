#!/bin/sh
echo 'setting display resolution'
xrandr --output VIRTUAL1 --off --output DP3 --off --output DP2 --off --output DP1 --off --output HDMI3 --off --output HDMI2 --off --output HDMI1 --off --output LVDS1 --primary --mode 1366x768 --pos 0x0 --rotate normal --output VGA1 --off
pactl set-default-sink alsa_output.pci-0000_00_1b.0.analog-stereo

echo 'setting background'
bash ~/.software/scripts/setBg.sh

echo 'setting audio output'
pactl set-card-profile 0 output:analog-stereo+input:analog-stereo
