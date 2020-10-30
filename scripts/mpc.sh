#!/bin/bash
mpc $@
pkill -RTMIN+2 i3blocks
