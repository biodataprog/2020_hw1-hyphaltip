#!/usr/bin/bash
# your script goes below here
# write a step which will download this file  
# https://ftp.ncbi.nlm.nih.gov/pub/UniVec/UniVec_Core
# follow that with steps which will count the number of sequences in the file (this is in the FASTA format)

curl -O https://ftp.ncbi.nlm.nih.gov/pub/UniVec/UniVec_Core
grep -c "^>" UniVec_Core

# on some systems you can add --no-progress-meter on othes you can use -s or --silent and it will not print the download messages
curl --silent https://ftp.ncbi.nlm.nih.gov/pub/UniVec/UniVec_Core | grep -c "^>"

