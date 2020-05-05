#!/bin/bash
nextcloud &
nm-applet &
bash ~/.config/notebookConfig/scripts/setBg.sh
xhost +local:
