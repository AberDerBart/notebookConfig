#!/bin/bash
echo "export MPD_HOST=$1" > ~/.mpcrc
pkill -RTMIN+2 i3blocks
