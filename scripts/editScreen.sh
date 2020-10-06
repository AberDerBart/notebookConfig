#!/bin/bash
arandr

layoutName=$(autorandr|dmenu -p "Enter layout name")
if [ $? -eq 0 ]
then
    echo "autorandr --save --force $layoutName"
fi
