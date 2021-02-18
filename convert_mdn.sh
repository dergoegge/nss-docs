#!/bin/sh
set -e

MDN_DIR=$1
DST_DIR=./source

if [ -z $MDN_DIR ] ; then
    echo "The first argument needs to be the path to the nss mdn doc folder"
    exit
fi

echo "Removing source/nss"
#rm -r $DST_DIR/nss || true

# replaces bug macros
replace_bug() {
    printf "%s" "$1" | iconv -t UTF-8 | sed -E 's/{{( )*[bB]ug\(([0-9]*)\)( )*}}/\`Bug \2 <https:\/\/bugzilla.mozilla.org\/show_bug.cgi\?id\=\2>\`__/g'
}

replace_plain_bug() {
    printf "%s" "$1" | iconv -t UTF-8 | sed -E 's/[^\`]Bug ([0-9]*)/\`Bug \1 <https:\/\/bugzilla.mozilla.org\/show_bug.cgi\?id\=\1>\`__/g'
}

# replaces rfc macros
replace_rfc() {
    printf "%s" "$1" | iconv -t UTF-8 | sed -E 's/{{( )*rfc\(([0-9]*)\)( )*}}/\`RFC \2 <https:\/\/tools.ietf.org\/html\/rfc\2>\`__/g'
}

replace_mediawiki() {
    printf "%s" "$1" | iconv -t UTF-8 | sed -E 's/{{( )*mediawiki.external\('\''(.*)'\''\)( )*}}/\[\2\]/g'
}

replace_internal_links() {
    # find links with pattern /.../Mozilla/... and convert it to the slug label.
    local slugs="$(printf "%s" "$1" | iconv -t UTF-8 | sed -n -E 's/[^\`]*\`[^<]*<\/.*\/(Mozilla\/[^>]*)>\`__.*/\1/p')"
    # replace the links with the slug
    local content="$1"
    for slug in $(echo "$slugs"); do
        local label="$(printf "%s" "$slug" | sed 's/[\/.]/_/g' | tr -d '\n')"
        [ -z "$label" ] && continue
        slug="$(echo "$slug" | tr -d '\n')"
        content="$(printf "%s" "$content" | iconv -t UTF-8 | sed -E 's,\`[^<]*<\/.*\/'"$slug"'>\`__,':ref:\`"$label"'\`,g')"
    done
    printf "%s" "$content"
}

replace_broken_NSS_links() {
	printf "%s" "$1" | sed -E 's,\`[^<]*<(NSS_[^>#/]*)>\`__,:ref:\`Mozilla_Projects_\1\`,g'
}

replace_broken_NSSv2_links() {
	printf "%s" "$1" | sed -E 's,\`[A-Za-z0-9# ]*<([^>#/]*)>\`__,:ref:\`Mozilla_Projects_NSS_\1\`,g'
}

replace_space_titles() {
	printf "%s" "$1" | sed -E '/^ [a-zA-Z]*$/{N;s/ ([a-zA-Z]*)(\n\---*)/\1\2/;}'
}

fix_bullet_lists() {
	printf "%s" "$1" | sed -E 's/-   \`\`\`/-  \`\`\`/g'
}

#replace_interwiki() {}
#replace_discussionlist() {}

get_file_title() {
    printf "%s" "$1" | head -n 1 | sed -n -E 's/--- title: (.*) slug:.*/\1/p'
}

print_rst_title_label() {
    local title=$1
    # replace space or . with _
    printf ".. _%s:" "$(echo "$title" | sed 's/[\/.]/_/g')"
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
   #echo "$html_file -> $rst_file"

    local top_yaml="$(cat $html_file | awk '/</ {exit} {print}' | sed 's/---//g')"
    local html_content="$(cat $html_file | awk '/</,EOF')"
    # Convert the html file to rst.
    local rst_content=$(printf "%s" "$html_content" | pandoc --columns 100 --from html --to rst)

    rst_content="$(replace_bug "$rst_content")"
    rst_content="$(replace_plain_bug "$rst_content")"
    rst_content="$(replace_rfc "$rst_content")"
    rst_content="$(replace_mediawiki "$rst_content")"
    rst_content="$(replace_internal_links "$rst_content")"
    rst_content="$(replace_broken_NSS_links "$rst_content")"
    rst_content="$(replace_broken_NSSv2_links "$rst_content")"
    rst_content="$(replace_space_titles "$rst_content")"
    rst_content="$(fix_bullet_lists "$rst_content")"
    #replace_internal_links "$rst_content"
    local title="$(printf "%s" "$top_yaml" | shyaml get-value title)"
    local slug="$(printf "%s" "$top_yaml" | shyaml get-value slug)"

    local title_label="$(print_rst_title_label "$slug")"
    title="$(print_rst_title "$title")"
    mkdir -p "$(dirname $rst_file)"
    printf "%s\n\n%s\n%s" "$title_label" "$title" "$rst_content" > $rst_file
}

echo "Converting files in $MDN_DIR"
for html_file in $(find $MDN_DIR -type f -name '*.html'); do
    [ -e "$html_file" ] || continue
    convert_file $html_file &
done

wait
cp -r $DST_DIR/nss/*_release_notes $DST_DIR/nss/nss_releases
rm -r $DST_DIR/nss/*_release_notes

# apply some nits
git apply ./nits1.patch

#convert_file "$MDN_DIR/http_delegation_clone/index.html"
#convert_file "$MDN_DIR/reference/nss_cryptographic_module/fips_mode_of_operation/index.html"
