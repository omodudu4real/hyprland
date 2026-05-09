#!/bin/bash

# ---------------------------
# Weather script for Hyprlock with manual icon mapping and caching
# ---------------------------

CACHE_FILE="/tmp/weather.cache"
CACHE_TTL=600   # 10 minutes
LOCKFILE="/tmp/weather.lock"

# ---------------------------
# Prevent simultaneous runs
# ---------------------------
if [ -e "$LOCKFILE" ]; then
    [ -e "$CACHE_FILE" ] && cat "$CACHE_FILE"
    exit 0
fi
touch "$LOCKFILE"

# ---------------------------
# Remove stale cache
# ---------------------------
if [ -e "$CACHE_FILE" ]; then
    CACHE_AGE=$(( $(date +%s) - $(stat -c %Y "$CACHE_FILE") ))
    if [ "$CACHE_AGE" -ge "$CACHE_TTL" ]; then
        rm -f "$CACHE_FILE"
    else
        cat "$CACHE_FILE"
        rm -f "$LOCKFILE"
        exit 0
    fi
fi

# ---------------------------
# Read location from hyprlock.conf
# ---------------------------
CITY=$(grep -oP '^\s*\$CITY\s*=\s*\K.+' ~/.config/hypr/hyprlock/hyprlock.conf | xargs)
COUNTRY=$(grep -oP '^\s*\$COUNTRY\s*=\s*\K.+' ~/.config/hypr/hyprlock/hyprlock.conf | xargs)

if [[ -z "$CITY" || -z "$COUNTRY" ]]; then
    echo "❓ Unknown location"
    rm -f "$LOCKFILE"
    exit 1
fi

# ---------------------------
# Fetch temperature
# ---------------------------
TEMP=$(curl -s --fail --max-time 5 --retry 2 "https://wttr.in/$CITY?format=%t" 2>/dev/null | tr -d ' ' | tr -d '°C')

if [[ -z "$TEMP" ]]; then
    echo "" | tee "$CACHE_FILE"
    rm -f "$LOCKFILE"
    exit 0
fi

# ---------------------------
# Manual icon mapping
# ---------------------------
case "$TEMP" in
    33)
        ICON="󰖙"  # Shiny sun for 33°C
        ;;
    25)
        ICON="󰼴" # Partly sunny for 25°C
        ;;
    20)
        ICON="󰖐"  # Cloudy for 20°C
        ;;
    15)
        ICON="󰖞" # Overcast for 15°C
        ;;
    10)
        ICON="󰖖" # Rainy for 10°C
        ;;
    *)
        # Default mapping for other values
        if (( TEMP > 30 )); then
            ICON="󰖙"
        elif (( TEMP >= 20 && TEMP <= 30 )); then
            ICON="󰼴"
        elif (( TEMP >= 10 && TEMP < 20 )); then
            ICON="󰖐"
        else
            ICON="󰖖"
        fi
        ;;
esac

# ---------------------------
# Compose output
# ---------------------------
OUTPUT="$ICON $TEMP°C"

# ---------------------------
# Output and cache
# ---------------------------
echo "$OUTPUT" | tee "$CACHE_FILE"

# ---------------------------
# Cleanup
# ---------------------------
rm -f "$LOCKFILE"
