#!/usr/bin/env bash

killall -q polybar

polybar --config=/home/coffe789/.config/polybar/polybar.ini coffe 2>&1 | tee -a /tmp/polybar1.log & disown
