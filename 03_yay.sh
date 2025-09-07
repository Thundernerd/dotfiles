#!/bin/bash

# Install yay if necessary
if ! command -v yay &>/dev/null; then
	git clone https://aur.archlinux.org/yay.git
	cd yay
	makepkg -si --noconfirm
	cd ..
	sudo rm -R yay
fi