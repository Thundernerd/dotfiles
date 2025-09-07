#!/bin/bash

append_if_not_exists "$HOME/.bashrc" "alias ls='eza -lh --group-directories-first --icons=auto'"
append_if_not_exists "$HOME/.bashrc" "alias lt='eza --tree --level=2 --long --icons --git'"