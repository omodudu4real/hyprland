#!/usr/bin/env bash

LOG="$HOME/.cache/load-last-wallpaper.log"
exec >"$LOG" 2>&1

echo "=== $(date) ==="

SWWW="/usr/local/bin/swww"
MATUGEN="/home/omodudu/.cargo/bin/matugen"
CONFIG="$HOME/.config/waypaper/config.ini"

WALL="$(sed -n 's/^wallpaper = //p' "$CONFIG" | head -n1)"
WALL="${WALL/#\~/$HOME}"

echo "Wallpaper is: $WALL"

if [ -z "$WALL" ]; then
  echo "No wallpaper path found in $CONFIG"
  exit 1
fi

if [ ! -f "$WALL" ]; then
  echo "Wallpaper file not found: $WALL"
  exit 1
fi

echo "Applying wallpaper..."
"$SWWW" img "$WALL" --transition-type none

if [ -x "$MATUGEN" ]; then
  echo "Running matugen..."
  "$MATUGEN" image "$WALL" --source-color-index 0 >/dev/null 2>&1 &
fi

echo "Done"


