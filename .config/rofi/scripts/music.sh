#!/bin/bash
baseOptions="⏯️ Toggle Play\n⏭️ Next\n⏮️ Previus"
spotifysong=""
PID=$(pgrep spotify)
if [ $(echo $?) -eq 0 ];then
    spotifysong="\n⏺️ $(spotifycli --song) - $(spotifycli --artist)"
fi
chosen=$(echo -e "$baseOptions$spotifysong" | rofi -show drun -show-icons -width 20 -lines 4 -dmenu -i)

if [[ $chosen = "⏯️ Toggle Play" ]]; then
    playerctl play-pause
    elif [[ $chosen = "⏮️ Previus" ]]; then
    playerctl previous
    elif [[ $chosen = "⏭️ Next" ]]; then
    playerctl next
fi
