#!/bin/bash

brightnessctl --device tpacpi::kbd_backlight s  $(("($(brightnessctl --device tpacpi::kbd_backlight g) + 1) %3"))
