#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Usage: $0 [FILE]"
	echo $#
	exit
fi
filepath=$(readlink -e $1)
thunderbird -compose "attachment=$filepath"
