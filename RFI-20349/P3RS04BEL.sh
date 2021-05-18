#!/bin/sh

# SOURCE_FILE_NAME="README"
DEST_FILE_NAME="P3RS04BEL-CST.pdf"
DEST_FILE_NAME_PROTECTED="P3RS04BEL-CST_(protected).pdf"
INDEX_FILE="P3RS04BEL-00-INDEX"
TEMPLATE="eisvogel_modam.latex"
DATE=$(date "+%d %B %Y")
DATA_DIR="pandoc"

SOURCE_FORMAT="markdown\
+backtick_code_blocks\
+pipe_tables\
+auto_identifiers\
+yaml_metadata_block\
+implicit_figures\
+table_captions\
+footnotes\
+smart\
+escaped_line_breaks\
+header_attributes"

pandoc -s -o "$DEST_FILE_NAME" -f "$SOURCE_FORMAT" --data-dir="$DATA_DIR" --template "$TEMPLATE" --toc --listings --columns=50 --number-section --dpi=300 --pdf-engine xelatex $(cat "$INDEX_FILE")

# OWNER_PASSWORD=$(date | md5sum | cut -d ' ' -f 1)

# echo qpdf --object-streams=disable --encrypt "" "$OWNER_PASSWORD" 256 --print=none --modify=none --extract=n -- "$DEST_FILE_NAME" "$DEST_FILE_NAME_PROTECTED"