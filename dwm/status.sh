#!/bin/sh
while true; do
    KB=$(xkblayout-state print %s)
    DATE=$(date "+%H:%M:%S")
    xsetroot -name "| $KB | $DATE | "dwm-6.6""
    sleep 1
done
