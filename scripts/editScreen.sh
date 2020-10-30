#!/bin/bash
arandr

layoutName=$(autorandr|dmenu -p "Enter layout name")
if [ $? -eq 0 ]
then
    autorandr --save --force $layoutName
fi
