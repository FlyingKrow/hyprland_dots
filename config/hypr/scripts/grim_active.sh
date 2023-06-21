#!/usr/bin/bash

aw=`hyprctl activewindow -j`
at=$(echo $aw | jq .at | tr -d '[]')
sz=$(echo $aw | jq .size | tr -d '[]')
title=$(echo $aw | jq .title)

at1=$(echo $at | cut -d ',' -f1)
at2=$(echo $at | cut -d ',' -f2 | tr -d ' ')
at1=$(expr "$at1" - 5)
at2=$(expr "$at2" - 5)

sz1=$(echo $sz | cut -d ',' -f1)
sz2=$(echo $sz | cut -d ',' -f2 | tr -d ' ')
sz1=$(expr "$sz1" + 10)
sz2=$(expr "$sz2" + 10)

coords="$at1,$at2 ${sz1}x${sz2}"

grim -g "$coords" - | wl-copy
notify-send -i ~/.extra/arch.png -t 1500 -a Grim "Took window ${title} to clipboard"
