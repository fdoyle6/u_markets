#!/bin/bash

# This converts a markdown file to a pdf.
# Error Codes:
# 0 - Success
# 1 - Markdown file does not exist.
# 2 - Pandoc conversion failed.

convert_md_to_pdf() {
    local md_path="$1"
    local pdf_path="$2"

    if [[ ! -f "$md_path" ]]; then
        # echo "Markdown file '$md_path' does not exist."
        return 1
    fi

    # Use pandoc to convert markdown to pdf
    pandoc "$md_path" -o "$pdf_path"

    if [[ $? -ne 0 ]]; then
        # echo "Failed to convert '$md_path' to '$pdf_path'."
        return 2
    fi

    # echo "Successfully converted '$md_path' to '$pdf_path'."
    return 0
}
