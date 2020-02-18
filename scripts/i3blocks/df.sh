#!/bin/bash

freeSpace=$(df -h --output='avail' /|tail -n1|tr -d '[:space:]')
echo "$freeSpace"
