#!/bin/bash

append_if_not_exists $"HOME/.bash_profile" 'export PATH="$PATH:$HOME/.local/bin"'