#!/usr/bin/env bash

BAT_PATH="/sys/class/power_supply/BAT1"

capacity=$(cat "$BAT_PATH/capacity")
status=$(cat "$BAT_PATH/status")

# Choose icon based on percentage
if [ "$capacity" -ge 90 ]; then
  icon=""
elif [ "$capacity" -ge 75 ]; then
  icon=""
elif [ "$capacity" -ge 50 ]; then
  icon=""
elif [ "$capacity" -ge 30 ]; then
  icon=""
# elif [ "$capacity" -ge 10 ]; then
#   icon=""
else
  icon=""   # empty
fi

# Charging override (optional)
if [ "$status" = "Charging" ]; then
  icon="󰂄"
fi

echo "$icon ${capacity}%"

