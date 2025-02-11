#!/bin/bash

SRC_DIR="./src"

# Find directories ending with "cuda" inside src
for dir in "$SRC_DIR"/*cuda/; do
    MAKEFILE="$dir/Makefile"

    # Check if Makefile exists in the directory
    if [[ -f "$MAKEFILE" ]]; then
        # Replace the ARCH line with "ARCH = sm_80"
        # sed -i '/^ARCH[[:space:]]*=/c\ARCH      = sm_80' "$MAKEFILE"
        # echo "Updated ARCH in: $MAKEFILE"
        (cd "$dir" && make)

    fi
done
