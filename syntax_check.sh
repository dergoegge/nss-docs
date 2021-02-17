#!/bin/sh

set -e

echo "Checking rst syntax"

for rst_file in $(find ./source -type f -name '*.rst'); do
    [ -e "$rst_file" ] || continue
    rstcheck --report warning $rst_file || true
done

