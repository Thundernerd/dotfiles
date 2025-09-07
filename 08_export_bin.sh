#!/bin/bash

append_if_not_exists "$HOME/.bashrc" 'export PATH="$PATH:$HOME/.local/bin"'