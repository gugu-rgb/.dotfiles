#!/bin/bash

# Automated setup for https://github.com/gugu-rgb/.dotfiles
# Last modify date: 29-09-2026

# Prerequisites:
# Arch Linux
# Paru
# git

mkdir ~/temporary_folder_for_dotfiles_setup
cd ~/temporary_folder_for_dotfiles_setup
git clone https://github.com/gugu-rgb/.dotfiles.git
cd ./.dotfiles

mv .wallpaper.png ~/

mkdir -p ~/.locale/share/applications
mv ./Desktop_files/*.desktop ~/.locale/share/applications

mkdir ~/Programs
mv ./Scripts ~/Programs

# Removing old config files, backup it!
rm -rf ~/.config/fastfetch
rm -rf ~/.config/fuzzel
rm -rf ~/.config/mako
rm -rf ~/.config/swaylock
rm -rf ~/.config/xdg-desktop-portal
rm -rf ~/.config/zed
rm -rf ~/.config/foot
rm -rf ~/.config/hypr
rm -rf ~/.config/sway
rm -rf ~/.config/waybar
rm -rf ~/.config/yt-dlp
rm -rf ~/.config/batsignal

mkdir ~/.config
mv ./.config/* ~/.config
mv ~/.config/.bashrc ~/

sudo pacman -Syu --noconfirm waybar ttf-nerd-fonts-symbols-mono swaybg mako fuzzel foot firefox greetd tuigreet swaylock hypridle pipewire pipewire-jack pipewire-alsa pipewire-pulse wireplumber xdg-desktop-portal xdg-desktop-portal-wlr brightnrssctl grim darkman xorg-xwayland networkmanager nmtui batsignal

paru swayfx

systemctl --user enable --now pipewire
systemctl --user enable --now pipewire-pulse
systemctl --user enable --now wireplumber
systemctl --user enable --now xdg-desktop-portal-wlr
systemctl --user enable --now darkman
systemctl --user enable --now batsignal
darkman set dark

cd ~/
rm -rf ~/temporary_folder_for_dotfiles_setup

echo "Configuration finisced, check that everything is working and change any configurations as needed."
echo "You can delete this configuration script!"
