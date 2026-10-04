#!/usr/bin/env bash
# ~/.config/waybar/scripts/ppd-switch.sh

STATE="${XDG_RUNTIME_DIR:-/tmp}/waybar-ppd-next"
current=$(powerprofilesctl get)

if [ "$1" = "toggle" ]; then
    case "$current" in
        performance) next=balanced; echo power-saver > "$STATE" ;;
        power-saver) next=balanced; echo performance > "$STATE" ;;
        *)
            next=$(cat "$STATE" 2>/dev/null)
            [ "$next" = "performance" ] || next=power-saver
            ;;
    esac
    powerprofilesctl set "$next"
    pkill -RTMIN+8 waybar
    exit 0
fi

printf '{"text":"%s","alt":"%s","class":"%s"}\n' "$current" "$current" "$current"
