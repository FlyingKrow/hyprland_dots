#!/usr/bin/bash

VOL=$(amixer -M get Master | grep '%' | awk -F '[][]' '{print $2}';)
VOL=${VOL%%%*}
echo $VOL
