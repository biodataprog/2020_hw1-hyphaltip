#!/usr/bin/bash
# your code goes after this
URL=https://fungidb.org/common/downloads/release-48/ScerevisiaeS288c/gff/data/FungiDB-48_ScerevisiaeS288c.gff
FILENAME=$(basename $URL)
if [ ! -s $FILENAME ]; then
  curl -o $FILENAME $URL
fi
echo "All features are reported by strand"
grep -v '^#' $FILENAME | cut -f3,7  | sort | uniq -c
echo "Only Gene features reported by strand"
# the quote around '^#'
grep -v '^#' $FILENAME | cut -f3,7  | grep gene | sort | uniq -c 
# or do it all at once without saving the file
# on some systems you can add --no-progress-meter on othes you can use -s or --silent and it will not print the download messages
#curl -s $URL | grep -v ^# | cut -f3,7  | sort | uniq -c
#curl -s $URL | grep -v ^# | cut -f3,7  | grep gene | sort | uniq -c

# add a line