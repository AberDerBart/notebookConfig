#!/bin/bash

SHUTDOWN_TIME=$(echo|dmenu -p "Shutdown delay (in minutes):")

shutdown -h +$SHUTDOWN_TIME
