#!/bin/bash
ID=`xinput|grep -i touchpad|sed 's/.*id=//'|sed 's/\t.*//'`

if [[ $1 == "1" ]]
then
	xinput enable $ID
fi
if [[ $1 == "0" ]]
then
	xinput disable $ID
fi
