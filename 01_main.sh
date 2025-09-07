#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -eE

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/funcs/append_if_not_exists.sh"

source 02_basics.sh
source 03_yay.sh
source 04_rustup.sh
source 05_hyprland.sh
source 06_extras.sh
source 07_cleanup.sh
source 08_export_bin.sh
source 09_stow.sh
source 10_aliases.sh