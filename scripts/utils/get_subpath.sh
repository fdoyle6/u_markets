#!/bin/bash

# This scripts gets returns the path below a certain level.

get_subpath() {
    local full_path="$1"
    local base_path="$2"

    # Remove the base path from the full path
    subpath="${full_path#$base_path/}"

    echo "$subpath"
}
