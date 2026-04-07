#!/bin/bash

set -euo pipefail

export LC_ALL=C

echo "Merging sorted files ..."
sort -m *.sorted > mergedWords

echo "Counting words ..."
uniq -c mergedWords | awk '{print $1, $2}' | sort -nr > countsOfWords

echo "Top 20 words:"
head -20 countsOfWords

echo "Done with post.sh"
