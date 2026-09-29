# Dotfiles

Hi!
Here are the dotfiles of my minimal DE.

## Watch desktop.mp4!
https://github.com/gugu-rgb/.dotfiles/Github_presentation_files/raw/refs/heads/main/desktop.mp4

## Features

- Wayland-based
- XOrg programs support
- Touchpad support

## Components

- **WM:** swayFX
- **Bar:** waybar
- **Bar icons:** ttf-nerd-fonts-symbols-mono
- **Background:** swaybg
- **Notifications:** mako
- **App launcher:** fuzzel
- **Terminal:** foot
- **Browser:** firefox
- **Login:** tuigreet
- **Lock screen:** swaylock
- **Idle:** hypridle
- **Brightness:** brightnessctl
- **Screenshots:** grim
- **Theme:** darkman

## Other needed things
- **xdg-desktop-portal**
- **xdg-desktop-portal-wlr**
- **pipewire, pipewire-pulse, pipewire-jack, pipewire-alsa, wireplumber**

## Functions

### Brightness

- Right click to decrease
- Left click to increase
- Scroll up to increase
- Scroll down to decrease
- Or increase/decrease with keybinds

### Volume

- Right click to decrease
- Left click to increase
- Scroll up to increase
- Scroll down to decrease
- Middle click to mute
- Or increase/decrease/mute with keybinds

### Workspaces

- Click
- Scroll
- Keybinds

## Configuration

All the configurations can be changed in the config files.

- **Keybinds:** you can see all of them in `.config/sway/config`.
- **Date:** set to UTC+2, change it in the waybar config files.
- **Terminal transparency:** can be adjusted in `.config/foot/foot.ini` by increasing or decreasing the alpha channel between 0.0 (transparent) and 1.0 (opaque).
- **Background blur:** if transparency is enabled, blur can be turned on and adjusted in `.config/sway/config`.
- **Power buttons:** I did not add the shutdown and reboot buttons to the bar, in order to keep it simple and clean. However, I created dedicated scripts and the respective `.desktop` files, so these actions can be performed from the fuzzel menu.

## Compatibility

Tested only on Arch Linux.

## Configuration script
Only if you have red it and you are shure, you can use it with:
`chmod +x ./setup.sh
./setup.sh`
