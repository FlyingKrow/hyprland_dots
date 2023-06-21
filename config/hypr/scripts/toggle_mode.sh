#!/usr/bin/bash

WB=$(pidof eww)
[ ! -z "$WB" ] && (eww kill && notify-send -i ~/.extra/arch.png -t 1500 -a "Toggling..." "Killing Eww & Dunst") && sleep 1 || ($HOME/.scripts/LaunchEww & notify-send -i ~/.extra/arch.png -t 1500 -a "Toggling..." "Restoring Eww & Dunst")
dunstctl set-paused toggle
