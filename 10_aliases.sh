#!/bin/bash

append_if_not_exists $"HOME/.bash_profile" "alias ls='eza -lh --group-directories-first --icons=auto'"
append_if_not_exists $"HOME/.bash_profile" "alias lt='eza --tree --level=2 --long --icons --git'"