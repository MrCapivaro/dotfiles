#!/usr/bin/env bash
set -eo pipefail

# Set the PWD to the ~/.config/rofi folder
cd "$HOME/.config/rofi"

[[ -n $WAYLAND_DISPLAY ]] &&
    copy="wl-copy" ||
    copy="xclip -sel clip"

symbols_file="./scripts/symbols.txt"

[[ ! -f "$symbols_file" ]] &&
    echo "$symbols_file not found" &&
    exit 1

selected="$(cat "$symbols_file" | rofi -dmenu -i -theme "configs/apps.rasi" -p " ")"

[[ -z $selected ]] && exit 1

echo -ne $(echo "$selected" | cut -d $'\t' -f 1) | $copy
