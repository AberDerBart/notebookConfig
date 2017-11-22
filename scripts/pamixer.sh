#!/bin/bash
pamixer $@
pkill -RTMIN+3 i3blocks
