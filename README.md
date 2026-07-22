# my hyprland dots
there not fully finished so dont expect them to be flawless but thay are definitly usable
a list of packages that you need are in pkglist.txt

# binds

| bind                       | action                                             |
| :------------------------- | :------------------------------------------------- |
| super + D                  | open app launcher                                  |
| super + 1                  | go to workspace 1                                  |
| super + 2                  | go to workspace 2                                  |
| super + 3                  | go to workspace 3                                  |
| super + 4                  | go to workspace 4                                  |
| super + 5                  | go to workspace 5                                  |
| super + 6                  | go to workspace 6                                  |
| super + 7                  | go to workspace 7                                  |
| super + 8                  | go to workspace 8                                  |
| super + 9                  | go to workspace 9                                  |
| super + 0                  | go to workspace 10                                 |
| super + return             | open alacritty(the terminal)                       |
| super + shift + 1          | move focused window to workspace 1                 |
| super + shift + 2          | move focused window to workspace 2                 |
| super + shift + 3          | move focused window to workspace 3                 |
| super + shift + 4          | move focused window to workspace 4                 |
| super + shift + 5          | move focused window to workspace 5                 |
| super + shift + 6          | move focused window to workspace 6                 |
| super + shift + 7          | move focused window to workspace 7                 |
| super + shift + 8          | move focused window to workspace 8                 |
| super + shift + 9          | move focused window to workspace 9                 |
| super + shift + 0          | move focused window to workspace 10                |
| super + f                  | make the focused window fullscreen                 |
| super + left mouse button  | move focused window                                |
| super + right mouse button | resize focused window                              |
| mute                       | mute audio                                         |
| raise volume               | increase volume by 5%                              |
| lower volume               | lower volume by 5%                                 |
| brightness down            | decrease brightness by 5%                          |
| brightness up              | increase brightness by 5%                          |
| super + left arrow button  | move focus to window on the left                   |
| super + right arrow button | move focus to window on the right                  |
| super + up arrow key       | move focus to window above current focused window  |
| super + down arrow key     | move focus to window below current focused window  |
| super + ctrl + h           | decrease width                                     |
| super + ctrl + l           | increase width                                     |
| super + ctrl + k           | decrease height                                    |
| super + ctrl + j           | increase height                                    |
| super + tab                | move to next workspace                             |
| super + shift + tab        | move to previous workspace                         |
| sysrq/prtscr               | open screenshot tool                               |
| super + n                  | toggle notification panel                          |
| super + ctrl + n           | clear notifications                                |
| super + shift + n          | toggle do not disturb                              |
| pause                      | pause the player                                   |
| play                       | unpause the player                                 |
| next                       | tell the player to play next track                 |
| previous                   | tell the player to play previous track             |
| super + v                  | open clipboard menu, selected item will be copied  |
| super + ctrl + v           | open clipboard menu: selected item will be deleted |
| super + l                  | lock                                               |
| super + shift + l          | open logout menu                                   |

# how to use the dotfiles 
method 1: run install.sh
note: the script only works on arch for now
```bash
chmod +x install.sh
./install.sh
```
method 2: install the dependencies and move/ copy dotfiles manualy
- install the packages in pkglist.txt
```bash
arch: yay -S $(cat pkglist.txt)
```
note: the fonts fonts are optional but they will help with some rndering of icons,it recomended to keep ttf-jetbrains-mono-nerd, alacritty is also optional but you will have to change the bind if you wanna use your own terminal
- copy/move dotfiles
to move:
```bash
mv -v ./.config/* $HOME/.config
mv -v ./.config/.* $HOME/.config
```
to copy:
```bash
cp -rv ./.config/* $HOME/.config
cp -rv ./.config/.* $HOME/.config
```
