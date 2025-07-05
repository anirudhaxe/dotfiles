#!/usr/bin/env sh

sketchybar --add event aerospace_workspace_change
# RED=0xffed8796
for sid in $(aerospace list-workspaces --all); do
    sketchybar --add item "space.$sid" left \
        --subscribe "space.$sid" aerospace_workspace_change \
        --set "space.$sid"                          \
        icon="$sid" \
        icon.padding_left=8                        \
        icon.padding_right=8                       \
        padding_left=2 \
        padding_right=2 \
        background.color=0x44ffffff \
        background.corner_radius=5 \
        background.height=30 \
        background.drawing=off                         \
        label.font="sketchybar-app-font:Regular:16.0" \
        label.background.height=26 \
        label.background.drawing=on \
        label.background.color=$BACKGROUND_2 \
        label.background.corner_radius=8 \
        label.drawing=off \
        click_script="aerospace workspace $sid" \
        script="$PLUGIN_DIR/aerospace.sh $sid"
done

separator=(
  icon=􀆊
  icon.font="$FONT:Heavy:16.0"
  padding_left=15
  # padding_right=15
  associated_display=active
  icon.color=$WHITE
)

sketchybar --add item separator left          \
           --set separator "${separator[@]}"

