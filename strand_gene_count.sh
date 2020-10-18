#!/usr/bin/bash
# your code goes after this 
URL=https://fungidb.org/common/downloads/release-48/ScerevisiaeS288c/gff/data/FungiDB-48_ScerevisiaeS288c.gff

curl --no-progress-meter $URL | grep -v ^# | cut -f3,7  | sort | uniq -c
curl --no-progress-meter $URL | grep -v ^# | cut -f3,7  | grep gene | sort | uniq -c
