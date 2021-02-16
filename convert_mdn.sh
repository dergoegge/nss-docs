#!/bin/sh
set -e

MDN_DIR=$1
DST_DIR=./source

if [ -z $MDN_DIR ] ; then
    echo "The first argument needs to be the path to the nss mdn doc folder"
    exit
fi

echo "Removing source/nss"
rm -r $DST_DIR/nss || true

# replaces bug macros
replace_bug() {
    echo "$1" | iconv -t UTF-8 | sed -E 's/{{( )*[bB]ug\(([0-9]*)\)( )*}}/\`Bug \2 <https:\/\/bugzilla.mozilla.org\/show_bug.cgi\?id\=\2>\`__/g'
}

# replaces rfc macros
replace_rfc() {
    echo "$1" | iconv -t UTF-8 | sed -E 's/{{( )*rfc\(([0-9]*)\)( )*}}/\`RFC \2 <https:\/\/tools.ietf.org\/html\/rfc\2>\`__/g'
}

replace_mediawiki() {
    echo "$1" | iconv -t UTF-8 | sed -E 's/{{( )*mediawiki.external\('\''(.*)'\''\)( )*}}/\[\2\]/g'
}

#replace_interwiki() {}
#replace_discussionlist() {}

get_file_title() {
    echo "$1" | head -n 1 | sed -n -E 's/--- title: (.*) slug:.*/\1/p'
}

print_rst_title() {
    local title=$1
    local title_length=${#title}

    printf "%${title_length}s\n" | sed 's/ /=/g'
    echo "$title"
    printf "%${title_length}s\n" | sed 's/ /=/g'
}

convert_file() {
    local html_file=$1
    local html_file_name="$(echo $html_file | sed 's/.*\/projects\///g')"
    html_file_name=${html_file_name%.*}
    # output file name
    local rst_file="$DST_DIR/$html_file_name.rst"
#    echo "$html_file -> $rst_file"

    # Convert the html file to rst.
    local rst_content=$(cat $html_file | pandoc --from html --to rst)

    rst_content="$(replace_bug "$rst_content")"
    rst_content="$(replace_rfc "$rst_content")"
    rst_content="$(replace_mediawiki "$rst_content")"
    local title="$(get_file_title "$rst_content")"
    rst_content="$(print_rst_title "$title")\n$rst_content"
    
    mkdir -p "$(dirname $rst_file)"
    echo "$rst_content" > $rst_file
}

echo "Converting files in $MDN_DIR"
for html_file in $(find $MDN_DIR -type f -name '*.html'); do
    [ -e "$html_file" ] || continue
    convert_file $html_file
done
#convert_file "$MDN_DIR/http_delegation_clone/index.html"
