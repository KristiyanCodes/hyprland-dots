#!/usr/bin/bash
cd $HOME/hyprland-dots*
echo "installing deps"
which yay || { echo "yay not installed, please install it to continue"; exit 1; }
yay -S $(cat ./pkglist.txt) --needed

echo "checking if $HOME/.config exists"
ls $HOME/.config/ >/dev/null || { echo "$HOME/.config not found, creating now"; mkdir -p $HOME/.config; echo "$HOME/.config created succesfully"; } && echo "$HOME/.config found"

echo "copying dotfiles in 5 seconds, if you have current dotfiles that you dont want overwritten, interrupt (by ctrl+c) this script now and back up your dotfiles"
sleep 5
cp -rv ./.config/* $HOME/.config
cp -v ./.config/.zshrc $HOME/
echo "checking if $HOME/Pictures exists (for wallpaper)"
ls $HOME/Pictures/ >/dev/null || { echo "$HOME/.config not found, creating now"; mkdir -p $HOME/Pictures; echo "$HOME/Pictures created succesfully"; } && echo "$HOME/Pictures found"

cp -v wallpaper1.png $HOME/Pictures

echo "dotfiles copied, to start hyprland type 'start-hyprland' or 'Hyprland' in your terminal"
echo "once you do that run 'swww img $HOME/Pictures/wallpaper1.png' to set the wallpaper"
