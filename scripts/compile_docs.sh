#!/bin/bash

# Source the repo structure so all paths are available.
root="$(git rev-parse --show-toplevel)"
source $root/scripts/repo_structure.sh
source $SCRIPTS_UTILS_PATH/debug_echo.sh

# Configure the debug level.
DEBUG_LEVEL=3
configure_debug_level $DEBUG_LEVEL
debug_echo 3 "Compiling documentation..."

# Take the user's initial path and save it so we can return at the end of the script.
initial_path=$(pwd)
debug_echo 2 "Initial path: '$initial_path'"

# Source the conversion script.
source $SCRIPTS_UTILS_PATH/get_subpath.sh
source $SCRIPTS_PATH/compile_docs/convert_md_to_pdf.sh

# Move to the docs raw folder and collect each of the files.
# cd $DOCS_RAW_PATH
find "$DOCS_RAW_PATH" -type f -print0 | while IFS= read -r -d '' file; do
    debug_newline 3
    debug_echo 3 "Processing: $file"

    # Validate that the file is a markdown file.
    if [[ "$file" == *.md ]]; then
        # Get the path to that file inside the raw folder.
        # This will be the path to the file inside the pdf folder after compilation.
        subpath=$(get_subpath "$file" "$DOCS_RAW_PATH")
        debug_echo 2 "Subpath: '$subpath'"

        # Define the output PDF path.
        pdf_path="$DOCS_PDF_PATH/${subpath%.md}.pdf"
        debug_echo 2 "Output PDF path: '$pdf_path'"

        # Create the output directory if it doesn't exist.
        output_dir=$(dirname "$pdf_path")
        mkdir -p "$output_dir"

        # Convert the markdown file to PDF.
        convert_md_to_pdf "$file" "$pdf_path"
        if [[ $? -ne 0 ]]; then
            debug_echo 5 "Failed to convert '$file' to PDF."
        else
            debug_echo 3 "Successfully converted '$file' to PDF."
        fi
    else
        debug_echo 3 "Skipping non-markdown file: '$file'"
        continue
    fi
done

# Return to the user's initial path.
debug_newline 3
cd "$initial_path"
debug_echo 3 "Documentation compilation complete."
