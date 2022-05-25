#!/bin/bash

WM_DESKTOP=$(xdotool getwindowfocus)

if [ $WM_DESKTOP == "4194367" ]; then

	echo "Desktop"

elif [ $WM_DESKTOP != "4194367" ]; then

	WM_CLASS=$(xprop -id $(xdotool getactivewindow) WM_CLASS | awk 'NF {print $NF}' | sed 's/"/ /g')
	WM_NAME=$(xprop -id $(xdotool getactivewindow) WM_NAME | cut -d '=' -f 2 | awk -F\" '{ print $2 }')

	if [ $WM_CLASS == 'code-oss' ]; then
		echo "%{F}Visual Studio Code%{u-}"

	elif [ $WM_CLASS == 'Alacritty' ]; then
		echo "%{F}Alacritty%{u-}"

	elif [ $WM_CLASS == 'firefox' ]; then
		echo "%{F}Firefox%{u-}"

	elif [ $WM_CLASS == 'Thunderbird' ]; then
		echo "%{F}Thunderbird%{u-}"
	
	elif [ $WM_CLASS == 'jetbrains-idea-ce' ]; then
			echo "%{F}Intellij%{u-}"
	# elif [ $WM_NAME == 'i3' ]; then

	# 	echo "%{F#ffffff}Customname%{u-}"

	else
		echo "%{F}$WM_NAME%{u-}"

	fi

fi
