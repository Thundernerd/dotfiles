#!/bin/bash

grep -qxF 'export PATH="$PATH:$HOME/.local/bin"' ~/.bash_profile || echo 'export PATH="$PATH:$HOME/.local/bin"' >> ~/.bash_profile