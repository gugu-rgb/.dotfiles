#!/usr/bin/env bash
# ~/.config/waybar/scripts/ppd-switch.sh

current=$(powerprofilesctl get)

if [ "$1" = "toggle" ]; then
    case "$current" in
        power-saver) next=performance ;;
        *)           next=power-saver ;;
    esac
    powerprofilesctl set "$next"
    pkill -RTMIN+8 waybar
    exit 0
fi

printf '{"text":"%s","alt":"%s","class":"%s"}\n' "$current" "$current" "$current"
