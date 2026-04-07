#!/bin/bash

export LC_ALL=C

local_file=$(echo "$1" | sed 's/.*\///')

cat "$local_file" | \
tr '[:upper:]' '[:lower:]' | \
sed -e 's/[[:punct:]]//g' | \
sed -e 's/[ \t]/\n/g' | \
grep -v "^[[:space:]]*$" | \
sort > "${local_file}.sorted"

