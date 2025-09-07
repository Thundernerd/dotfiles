#!/bin/bash

append_if_not_exists() {
    local file="$1"
    local text="$2"

    # Make sure the file exists
    touch "$file"

    # Check if the text already exists
    grep -qxF "$text" "$file" || echo "$text" >> "$file"
}
