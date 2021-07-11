#!/bin/bash
baseOptions="⏯️ Toggle Play\n⏭️ Next\n⏮️ Previus"
spotifysong="\n$(spt pb)"

chosen=$(echo -e "$baseOptions$spotifysong" | rofi -show drun -show-icons -width 40 -lines 4 -dmenu -i)

if [[ $chosen = "⏯️ Toggle Play" ]]; then
    spt pb -t
    elif [[ $chosen = "⏮️ Previus" ]]; then
    spt pb -p
    elif [[ $chosen = "⏭️ Next" ]]; then
    spt pb -n
fi
