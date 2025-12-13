#!/bin/sh

class=$(playerctl metadata --player=spotify --format '{{lc(status)}}' 2>/dev/null || echo "stopped")
icon=""
paused=""

info=$(playerctl metadata --player=spotify --format '{{artist}} - {{title}}' 2>/dev/null || echo "")

if [[ $class == "playing" ]]; then
  if [[ ${#info} -gt 40 ]]; then
    info=$(echo $info | cut -c1-30)"..."
  fi
  text=$info" "$icon

elif [[ $class == "paused" ]]; then
  if [[ ${#info} -gt 40 ]]; then
    info=$(echo $info | cut -c1-30)"..."
  fi
    text=$info" "$paused  
  fi

echo -e "{\"text\":\""$text"\", \"class\":\""$class"\"}"




