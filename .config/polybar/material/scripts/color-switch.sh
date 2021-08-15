#!/usr/bin/env bash

SDIR="$HOME/.config/polybar/material/scripts"
light="$SDIR"/colors-light.sh
dark="$SDIR"/colors-dark.sh


# Launch Rofi
MENU="$(rofi -no-config -no-lazy-grab -sep "|" -dmenu -i -p '' \
-theme $SDIR/rofi/styles.rasi \
<<< "♥ black|♥ blacklight|♥ red|♥ redlight|♥ green|♥ greenlight|\
♥ yellow|♥ yellowlight|♥ blue|♥ bluelight|♥ magenta|♥ magentalight|\
♥ cyan|♥ cyanlight|♥ black-dark|♥ black-light-dark|♥ red-dark|♥ red-light-dark|\
♥ green-dark|♥ green-light-dark|♥ yellow-dark|♥ yellow-light-dark|♥ blue-dark|♥ blue-light-dark|\
♥ magenta-dark|♥ magenta-light-dark|♥ cyan-dark|♥ cyan-light-dark|")"
            case "$MENU" in
				## Light Colors
                *black) "$light" --black ;;
				*blacklight) "$light" --blacklight ;;
				*red) "$light" --red ;;
                *redlight) "$light" --redlight ;;
                *green) "$light" --green ;;
				*greenlight) "$light" --greenlight ;;
                *yellow) "$light" --yellow ;;
                *yellowlight) "$light" --yellowlight ;;
				*blue) "$light" --blue ;;
                *bluelight) "$light" --bluelight ;;
                *magenta) "$light" --magenta ;;
                *magentalight) "$light" --magentalight ;;
                *cyan) "$light" --cyan ;;
                *cyanlight) "$light" --cyanlight ;;
                ## Dark Colors
                *black-dark) "$dark" --black-dark ;;
				*black-light-dark) "$dark" --black-light-dark ;;
				*red-dark) "$dark" --red-dark ;;
                *red-light-dark) "$dark" --red-light-dark ;;
                *green-dark) "$dark" --green-dark ;;
				*green-light-dark) "$dark" --green-light-dark ;;
                *yellow-dark) "$dark" --yellow-dark ;;
                *yellow-light-dark) "$dark" --yellow-light-dark ;;
				*blue-dark) "$dark" --blue-dark ;;
                *blue-light-dark) "$dark" --blue-light-dark ;;
                *magenta-dark) "$dark" --magenta-dark ;;
                *magenta-light-dark) "$dark" --magenta-light-dark ;;
                *cyan-dark) "$dark" --cyan-dark ;;
                *cyan-light-dark) "$dark" --cyan-light-dark ;;     
            esac
