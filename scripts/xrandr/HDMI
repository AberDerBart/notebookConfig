#!/bin/sh
echo 'setting display resolution'
xrandr \
--output LVDS1 --primary --mode 1366x768 --pos 0x0 --rotate normal \
--output VIRTUAL1 --off \
--output DP3 --off \
--output DP2 --off \
--output DP1 --off \
--output HDMI3 --off \
--output HDMI2 --off \
--output HDMI1 --auto --pos 1366x0 \
--output VGA1 --off

echo 'setting audio output'
pactl set-card-profile 0 output:hdmi-stereo+input:analog-stereo
