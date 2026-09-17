#!/bin/bash
theme_options=("nord" "catppuccin")
theme_option=$( printf "%s\n" ${theme_options[@]} | wofi --dmenu) 

if [ -z $theme_option ]; then
	echo "theme not chosen, exiting..."
	exit 1
fi

if [ "$theme_option" == "nord" ]; then
	{ ln -sf "$HOME/.config/configs/waybar/waybar-nord/config.jsonc" "$HOME/.config/waybar/config.jsonc"; echo "success linking config.jsonc file"; } || echo "error"
	{ ln -sf "$HOME/.config/configs/waybar/waybar-nord/style.css" "$HOME/.config/waybar/style.css"; echo "success linking style.css file"; } || echo "error"
elif [ "$theme_option" == "catppuccin" ]; then
	{ ln -sf "$HOME/.config/configs/waybar/waybar-catppuccin/config.jsonc" "$HOME/.config/waybar/config.jsonc"; echo "success linking config.jsonc file"; } || echo "error"
	{ ln -sf "$HOME/.config/configs/waybar/waybar-catppuccin/style.css" "$HOME/.config/waybar/style.css"; echo "success linking style.css file"; } || echo "error"
fi

pkill waybar
waybar &>/dev/null & 
