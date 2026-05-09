#!/bin/bash

# ------------------------
# Get battery info
# ------------------------
PERC=$(cat /sys/class/power_supply/BAT0/capacity)
STATUS=$(cat /sys/class/power_supply/BAT0/status)

# ------------------------
# Set icon based on percentage and status
# ------------------------
if [[ "$STATUS" == "Charging" ]]; then
    ICON=""  # Lightning bolt for charging
elif (( PERC <= 10 )); then
    ICON="󰂃"   # Empty battery
elif (( PERC <= 30 )); then
    ICON="󱊡"   # Low battery
elif (( PERC <= 60 )); then
    ICON="󰁾"   # Medium battery
elif (( PERC <= 90 )); then
    ICON="󰂁"   # High battery
else
    ICON="󱟢"   # Full battery
fi

# ------------------------
# Output
# ------------------------
echo "$ICON $PERC%"
