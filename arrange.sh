BASE_DIR=$PWD
FILES_DIR="$BASE_DIR/files"

for file in $FILES_DIR/*; do
    firstChar=$(basename "$file" | cut -c 1 | tr '[:upper:]' '[:lower:]')
    if [ -d "$BASE_DIR/$firstChar" ]; then
        mv "$file" "$BASE_DIR/$firstChar/"
    fi
done
