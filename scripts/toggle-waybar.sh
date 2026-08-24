#!/bin/bash

WAYBAR="/home/omodudu/.nix-profile/bin/waybar"
STATE_FILE="$HOME/.cache/waybar-current-theme"

if pgrep -f "^${WAYBAR}($| )" >/dev/null; then
    # Waybar is running → close it
    pkill -f "^${WAYBAR}($| )"
else
    # Waybar is not running → restore the last selected theme

    if [[ -f "$STATE_FILE" ]]; then
        IFS='|' read -r theme variant < "$STATE_FILE"

        config="$HOME/.config/waybar/themes/$theme/$variant/config.jsonc"
        style="$HOME/.config/waybar/themes/$theme/$variant/style.css"

        if [[ -f "$config" && -f "$style" ]]; then
            "$WAYBAR" \
                -c "$config" \
                -s "$style" \
                >/dev/null 2>&1 &
        else
            "$WAYBAR" >/dev/null 2>&1 &
        fi
    else
        "$WAYBAR" >/dev/null 2>&1 &
    fi
fi
