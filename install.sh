#!/usr/bin/bash
cd $HOME/hyprland-dots*
echo "installing deps"
which yay || { echo "yay not installed, please install it to continue"; exit 1; }
yay -S $(cat ./pkglist.txt) --needed

echo "checking if $HOME/.config exists"
ls $HOME/.config/ >/dev/null || { echo "$HOME/.config not found, creating now"; mkdir -p $HOME/.config; echo "$HOME/.config created succesfully"; } && echo "$HOME/.config found"

echo "copying dotfiles in 5 seconds, if you have current dotfiles that you dont want overwritten, interrupt (by ctrl+c) this script now and back up your dotfiles"
sleep 5
cp -rv ./alacritty $HOME/.config
cp -rv ./hypr $HOME/.config
cp -rv ./swaync $HOME/.config
cp -rv ./waybar $HOME/.config
cp -rv ./wlogout $HOME/.config

echo "dotfiles copied, to start hyprland type start-hyprland or hyprland in your terminal"
