#!/bin/sh

player_status=$(playerctl status 2> /dev/null)

if [[ "$player_status" = "Playing" || "$player_status" = "Pause" ]]; then
    echo "$(playerctl metadata title))"
else
  echo ""
fi
