#!/bin/bash

# Install Hyprland + required
yay -S --needed --noconfirm \
			alacritty \
			cliphist \
			dunst \
			elephant \
			elephant-desktopapplications \
			elephant-archlinuxpkgs \
			elephant-websearch \
			elephant-clipboard \
			elephant-files \
			elephant-menus \
			elephant-calc \
			hyprcursor \
			hyprgraphics \
			hypridle \
			hyprland \
			hyprpicker \
			hyprpolkitagent \
			hyprshot \
			hyprsunset \
			nautilus \
			nautilus-admin-gtk4 \
			nautilus-open-any-terminal \
			noto-fonts \
			pipewire \
			qt5-wayland \
			qt6-wayland \
			quickshell \
			stow \
			swaylock \
			swww \
			uwsm \
			walker \
			xdg-desktop-portal-hyprland

append_block_if_not_exists "$HOME/.bashrc" \
    "exec uwsm start hyprland-uwsm.desktop" \
    $'if uwsm check may-start; then\n    exec uwsm start hyprland-uwsm.desktop\nfi'
