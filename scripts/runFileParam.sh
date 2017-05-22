#!/bin/bash
program=$(dmenu_path|dmenu)
if [[ $? == 1 ]]
then
	exit
fi
file=$(dirmenu)
if [[ $? == 1 ]]
then
	exit
fi

$program $file
