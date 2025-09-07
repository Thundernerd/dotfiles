#!/bin/bash

append_if_not_exists() {
    local file="$1"
    local text="$2"

    # Make sure the file exists
    touch "$file"

    # Check if the text already exists
    grep -qxF "$text" "$file" || echo "$text" >> "$file"
}

append_block_if_not_exists() {
    local file="$1"
    local marker="$2"
    local block="$3"

    touch "$file"

    grep -qF "$marker" "$file" || echo -e "\n$block" >> "$file"
}
