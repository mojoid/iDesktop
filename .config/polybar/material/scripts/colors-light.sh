#!/usr/bin/env bash

# Color files
PFILE="$HOME/.config/polybar/material/colors.ini"
RFILE="$HOME/.config/polybar/material/scripts/rofi/colors.rasi"

# Change colors
change_color() {
	# polybar
	sed -i -e 's/background = #.*/background = #f9f9f9/g' $PFILE
	sed -i -e 's/foreground = #.*/foreground = #5f5f5f/g' $PFILE
	sed -i -e 's/foreground-alt = #.*/foreground-alt = #656565/g' $PFILE
	sed -i -e "s/module-fg = #.*/module-fg = $MF/g" $PFILE
	sed -i -e "s/primary = #.*/primary = $AC/g" $PFILE
	sed -i -e 's/secondary = #.*/secondary = #E53935/g' $PFILE
	sed -i -e 's/alternate = #.*/alternate = #7cb342/g' $PFILE
	
	# rofi
	cat > $RFILE <<- EOF
	/* colors */

	* {
	  al:   #00000000;
	  bg:   #FFFFFFFF;
	  bga:  ${AC}33;
	  bar:  ${MF}FF;
	  fg:   #2E2E2EFF;
	  ac:   ${AC}FF;
	}
	EOF
	
	polybar-msg cmd restart
}

if  [[ $1 = "--black" ]]; then
	MF="#515151"
	AC="#bdbdbd"
	change_color
elif  [[ $1 = "--blacklight" ]]; then
	MF="#f0f0f0"
	AC="#bdbdbd"
	change_color 
elif  [[ $1 = "--red" ]]; then
	MF="#515151"
	AC="#ef3080"
	change_color
elif  [[ $1 = "--redlight" ]]; then
	MF="#f0f0f0"
	AC="#ef5093"
	change_color
elif  [[ $1 = "--green" ]]; then
	MF="#515151"
	AC="#2AE077"
	change_color
elif  [[ $1 = "--greenlight" ]]; then
	MF="#f0f0f0"
	AC="#68e09b"
	change_color
elif  [[ $1 = "--yellow" ]]; then
    MF="#515151"
    AC="#f0a412"
    change_color
elif  [[ $1 = "--yellowlight" ]]; then
    MF="#f0f0f0"
    AC="#ffb630"
    change_color
elif [[ $1 = "--blue" ]]; then
    MF="#515151"
    AC="#5294e2"
    change_color
elif [[ $1 = "--bluelight" ]]; then
    MF="#f0f0f0"
    AC="#9bbbff"
    change_color
elif [[ $1 = "--magenta" ]]; then
    MF="#515151"
    AC="#7e57c2"
    change_color
elif [[ $1 = "--magentalight" ]]; then
    MF="#f0f0f0"
    AC="#977fc2"
    change_color
elif [[ $1 = "--cyan" ]]; then
    MF="#515151"
    AC="#1DBDFF"
    change_color
elif [[ $1 = "--cyanlight" ]]; then
    MF="#f0f0f0"
    AC="#51cdff"
    change_color
else
	cat <<- _EOF_
	No option specified, Available options:
	--black --blacklight	--red   --redlight
    --gren  --greenlight   --yellow --yellowlight
    --blue  --bluelight    --magenta   --magentalight
    --cyan  --cyanlight
    
	
	_EOF_
fi
