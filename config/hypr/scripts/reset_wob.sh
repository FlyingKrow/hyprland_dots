#!/usr/bin/bash

[ ! -p /tmp/wobpipe ] && ([ -f /tmp/wobpipe ] && (rm /tmp/wobpipe && mkfifo /tmp/wobpipe) || mkfifo /tmp/wobpipe)
tail -f /tmp/wobpipe | wob
