#!/bin/bash
source ~/.mpcrc
mpc $@
pkill -RTMIN+2 i3blocks
