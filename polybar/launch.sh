#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch example
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar primary 2>&1 | tee -a /tmp/polybar1.log & disown
polybar secondary 2>&1 | tee -a /tmp/polybar1.log & disown

echo "Bars launched..."
