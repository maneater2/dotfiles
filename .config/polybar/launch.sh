#!/bin/sh
killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
echo "---" | tee -a /tmp/polybartop.log
polybar top 2>&1 | tee -a /tmp/polybartop.log & disown
