#!/bin/bash

# kill old instances of polybar

killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done


# run one or more instances. you can run more bars for every display here

polybar bar1 2>&1 | tee -a /tmp/polybar-bar1.log & disown
