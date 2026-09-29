#!/usr/bin/env bash
set -e

echo "im sorry if this script dosen't work im not this good at these type of scripts"

echo "pulling repository to ram"
cd /tmp
git clone --depth=1 https://github.com/KristiyanCodes/hyprland-dots.git

install_deps() {
	if command -v pacman ; then
		echo "arch based system detected"
		echo "checking if yay is installed"
		if command -v yay &>/dev/null ; then
			echo "yay is installed preceed installing deps(y/n)"
			read arch_install_deps
			if [ "$arch_install_deps" == "y" ]; then
				cd /tmp/hyprland-dots
				yay -Sy $(cat ./pkglist.txt) --needed
			elif [ "$arch_install_deps" == n ]; then
				echo "ok, please install deps manually or in another way"
				exit 0
			else
				echo "$arch_install_deps not understood, exiting..."
				exit 1
			fi
		else
			echo "yay is not installed, install it for you? (y/n)"
			read install_yay
			if [ "$install_yay" == "y" ]; then
				cd /tmp
				git clone --depth=1 https://aur.archlinux.org/yay-bin.git
				cd yay-bin
				makepkg -si
				echo "yay is now installed, proceed installing deps (y/n)"
				read proceed_to_deps
				if [ "$proceed_to_deps" == "y" ]; then
					echo "installing deps"
					cd /tmp/hyprland-dots
					yay -Sy $(cat ./pkglist.txt) --needed
				elif [ "$proceed_to_deps" == "n" ]; then
					echo "please install yay or deps another way"
				else
					echo "option $proceed_to_deps not understood, exiting..."
					exit 1
				fi
			elif [ "$install_yay" == "n" ]; then
				echo "ok, please install yay or dependencies another way"
				exit 0
			else 
				echo "option $install_yay not understood, exiting..."
				exit 1
			fi
		fi
	fi
}

copy_dotfiles() {
	echo "copying dotfiles in 5 seconds, if you have any existing files that you dont want gone, press CTRL+c now and back them up"
	sleep 5
	if [ -d "$HOME/.config" ]; then
		echo "copying dotfiles ..."
		cd /tmp/hyprland-dots
		cp -rv ./.config/* ~/.config
		rm -f ~/.config/.zshrc
		cp -v ./.config/.zshrc ~/
		if [ -d ~/Pictures ]; then
			cp ./wallpaper1.png ~/Pictures
		else
			echo "no ~/Pictures directory found(for the wallpaper) create it for you (y/n)"
			read create_pictures
			if [ "$create_pictures" == "y" ]; then
				mkdir -p ~/Pictures
				echo "~/Pictures sucessfully created, proceeding to copy wallpaper"
				cp ./wallpaper1.png ~/Pictures
			elif [ "$create_pictures" == "n" ]; then
				echo "ok, not copying wallpaper"
			else
				echo "option $create_pictures not understood, exiting"
			fi
		fi
	elif [ ! -d "$HOME/.config" ]; then
		echo "~/.config not found, create it for you? (y/n)"
		read create_config
		if [ "$create_config" == "y" ]; then
			mkdir -p ~/.config
			echo "~/.config sucessfuly created, proceeding copying dotfiles"
			cd /tmp/hyprland-dots
			cp ./.config/* ~/.config
			rm -f ~/.config/.zshrc
			cp ./.config/.zshrc ~/
			if [ -d ~/Pictures ]; then
				cp ./wallpaper1.png ~/Pictures
			else
				echo "~/Pictures directory not found(for wallpaper), create it for you? (y/n)"
				read create_pictures
				if [ "$create_pictures" == "y" ]; then
					mkdir -p ~/Pictures
					echo "~/Pictures sucessfilly created, proceeding to copy wallpaper"
					cp ./wallpaper1.png ~/Pictures
				elif [ "$create_pictures" == "n" ]; then
					echo "ok, not copying wallpaper"
				else
					echo "option $create_pictures not understood, exiting..."
					exit 1
				fi
			fi
		elif [ "$create_config" == "n" ]; then
			echo "ok, please copy dotfiles to a other location or make ~/.config yourself"
		else
			echo "option $create_config not understood, exiting.."
			exit 1
		fi
	fi
}
install_deps
copy_dotfiles
echo "dotfiles copied, to start hyprland type 'start-hyprland' or 'Hyprland' in your terminal"
echo "once you do that run 'awww img $HOME/Pictures/wallpaper1.png' to set the wallpaper"
