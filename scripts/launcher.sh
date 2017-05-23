#!/bin/bash

if [[ $1 ]]
then
	LAUCH_TABLE=$1
	LAUNCH_TABLE_CUSTOM=""
else
	LAUNCH_TABLE=~/.config/notebookConfig/launcher.tbl
	LAUNCH_TABLE_CUSTOM=""
fi



CHOICE=`cat $LAUNCH_TABLE $LAUNCH_TABLE_CUSTOM | cut -f 1 | dmenu -i`

if [ $? == 0 ]
then
	COMMAND=`cat $LAUNCH_TABLE $LAUNCH_TABLE_CUSTOM | grep -P "^$CHOICE\t" | cut -f 2`

	echo "Launching $COMMAND"
	$COMMAND
else
	echo "Aborted"
fi
