#!/bin/bash
owncloud &
nm-applet &
python ~/.software/mpdforward/mpdforward.py &
bash ~/.config/notebookConfig/scripts/setBg.sh
