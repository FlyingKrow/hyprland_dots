#!/usr/bin/bash

amixer sset Master 3%-
VOL=$(amixer -M get Master | grep '%' | awk -F '[][]' '{print $2}';)
VOL=${VOL%%%*}
echo $VOL
echo $VOL > /tmp/wobpipe
