#!/bin/bash

function ask {
	question=$1
	read -r -p "${1} [y/N]: " REPLY

	case $REPLY in
		[yY]) return 0;;
		*) return 1;;
	esac

}
