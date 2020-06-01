#!/usr/bin/env bash

killall -q polybar

cd ~/.config/polybar 

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar main -rq &
