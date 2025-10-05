# dotfiles
## Arch install
this section still needs to be done lol ;)

## Programms
### pacman
```
sudo pacman -Sy i3-wm i3-status ripgrep tmux brightnessctl ttf-jetbrains-mono ttf-liberation ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols-common emacs
```
### yay
```
yay -S rofi-lbonn-wayland ttf-devicons
```

## emacs autostart as systemd service

``` bash
systemctl --user daemon-reexec
systemctl --user daemon-reload
systemctl --user enable --now emacs.service
```
