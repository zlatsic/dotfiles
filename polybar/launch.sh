#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch example
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
grep -E [\[]bar $HOME/.config/polybar/bars.ini \
	| sed -e 's/^\[bar\///' -e 's/\]$//' \
	| while read -r bar ; do
	echo launching bar "$bar"
	polybar $bar 2>&1 | tee -a /tmp/polybar-${bar}.log & disown
done

echo "Bars launched..."
