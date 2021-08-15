#!/usr/bin/env bash

DMENU="rofi -dmenu -i -p Search -theme themes/appsmenu.rasi"
# OPTIONS = [[label, command]]


OPTIONS='''
[
  ["file manager ⌘+t", "thunar"],
  ["open terminal ⌘+enter", "urxvt"],
  ["focus window ⌘+(↑ ← ↓ →)", ""],
  ["move window ⌘+shift", ""],
  ["split in horizontal ⌘+h", ""],
  ["split in vertikal ⌘+v", ""],
  ["fullscreen ⌘+f", ""],
  ["floating window ⌘+shift+space", ""],
  ["focus floating window ⌘+space", ""],
  ["focus all window ⌘+a", ""],
  ["switch to workspace ⌘+(number)", ""],
  ["move window to workspace ⌘+shift+(number)", ""],
  ["reload the config ⌘+shift+c", ""],
  ["restart i3 ⌘+shift+r", ""],
  ["resize window ⌘+ctrl+(↑ ← ↓ →)", ""],
  ["app laucher ⌘+shift+enter", "~/.config/rofi/scripts/appsmenu.sh"],
  ["powermenu ⌘+shift+end", "~/.config/rofi/scripts/powermenu.sh"],
  ["screenshot [PRTSC]", "~/.scripts/shot-now"],
  ["screenshot menu ⌘+prtsc", "/.config/rofi/scripts/screenshot.sh"],
  ["ranger ⌘+r", "urxvt -e ranger"],
  ["close window ⌘+shift+z", ""],
  ["networkmanager [F12]", "networkmanager_dmenu"],
  ["hide window ⌘+shift+x", ""],
  ["unhide window ⌘+z", ""],
  ["workspace back and forth ⌘+b", ""],
  ["move window to workspace back_and_forth ⌘+shift+b", ""],
  ["layout stacking ⌘+s", ""],
  ["layout tabbed ⌘+w", ""],
  ["layout toggle split ⌘+e", ""],
  ["sticky toggle ⌘+shift+s", ""],
  ["theme ⌘+shift+m", "~/.config/i3/toggle-change-theme.sh"],
  ["lock ⌘+end", "~/.config/i3/lock.sh"],
  ["mpd & ncmpcpp ⌘+y", "~/.config/i3/scripts/musikon.sh"],
  ["stop mpd & ncmpcpp ⌘+shift+y", "~/.config/i3/scripts/musikoff.sh"]
]
'''

label=$(echo $OPTIONS | jq -r "sort | .[][0]" | $DMENU)
exec $(echo $OPTIONS | jq -r ".[] | select(.[0] == \"$label\") | .[1]")
&> /dev/null
