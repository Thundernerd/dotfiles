#!/bin/bash

# Install basics
sudo pacman -S --needed --noconfirm base-devel \
			git \
			nano

# Install yay if necessary
if ! command -v yay &>/dev/null; then
	git clone https://aur.archlinux.org/yay.git
	cd yay
	makepkg -si --noconfirm
	cd ..
	sudo rm -R yay
fi

# Install Rustup to prevent any cargo issues down the line
yay -S --needed rustup

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
			eww \
			hyprcursor \
			hyprgraphics \
			hypridle \
			hyprland \
			hyprpaper \
			hyprpicker \
			hyprpolkitagent \
			hyprshot \
			hyprsunset \
			nautilus \
			nautilus-admin-gtk4 \
			nautilus-open-any-terminal \
			nerd-fonts-git \
			noto-fonts \
			pipewire \
			qt5-wayland \
			qt6-wayland \
			stow \
			swaylock \
			uwsm \
			walker \
			xdg-desktop-portal-hyprland

# Install extra stuff
yay -S --needed --noconfirm \
			1password \
			1password-cli \
			bazaar \
			btop \
			cups \
			cups-pdf \
			discord \
			dotnet-sdk \
			dust \
			eza \
			flatpak \
			gum \
			jdk-openjdk \
			jetbrains-toolbox \
			lazygit \
			less \
			libreoffice-fresh \
			localsend \
			mission-center \
			mono \
			nextcloud-client \
			nvtop \
			openssh \
			partitionmanager \
			proton-pass-bin \
			protonplus \
			protontricks \
			rsync \
			steam \
			tmux \
			unityhub \
			unzip \
			visual-studio-code-bin \
			vivaldi \
			vivaldi-ffmpeg-codecs \
			wine \
			winetricks \
			yazi \
			zip

yay -Scc
yay -Ycc