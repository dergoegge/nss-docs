#!/bin/sh
set -e

MDN_DIR=$1
DST_DIR=./source

if [ -z $MDN_DIR ] ; then
    echo "The first argument needs to be the path to the nss mdn doc folder"
    exit
fi

echo "Removing source/nss"
rm -r $DST_DIR/nss

convert_file() {
    local html_file=$1
    local html_file_name="$(echo $html_file | sed 's/.*\/projects\///g')"
    html_file_name=${html_file_name%.*}

    # output file name
    local rst_file="$DST_DIR/$html_file_name.rst"
    echo "$html_file -> $rst_file"

    # Convert the html file to rst.
    local rst_content=$(cat $html_file | pandoc --from html --to rst)

    # TODO: do post processing on rst_content.

    mkdir -p "$(dirname $rst_file)"
    echo "$rst_content" > $rst_file
}

echo "Converting files in $MDN_DIR"
for html_file in $(find $MDN_DIR -type f -name '*.html'); do
    [ -e "$html_file" ] || continue
    convert_file $html_file
done
