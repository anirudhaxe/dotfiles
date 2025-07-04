#!/bin/bash

echo "called with $1"
echo "$FOCUSED_WORKSPACE"

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
    sketchybar --set $NAME label.background.drawing=on
else
    sketchybar --set $NAME label.background.drawing=off
fi
