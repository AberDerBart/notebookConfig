#!/bin/bash
owncloud &
bash ~/.config/notebookConfig/scripts/setBg.sh
if [ -e ~/ownCloud/scripts/$HOSTNAME/autostart.sh ];then
	bash ~/ownCloud/scripts/$HOSTNAME/autostart.sh
fi
