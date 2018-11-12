#!/bin/bash
owncloud &
nm-applet &
python ~/.software/mpdforward/mpdforward.py 2>&1 |tee /home/bart/tmp/log/mpdforward.log &
bash ~/.config/notebookConfig/scripts/setBg.sh
