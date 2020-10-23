#!/usr/bin/bash
# your code goes next

# in one comamnd on linux
#curl --no-progress-meter 'https://raw.githubusercontent.com/biodataprog/GEN220_data/main/data/rice_random_exons.bed' | awk '{ sum += $3-$2 } END { print sum}'

FILENAME=rice_random_exons.bed
if [ ! -s $FILENAME ]; then
  curl -o $FILENAME https://raw.githubusercontent.com/biodataprog/GEN220_data/main/data/rice_random_exons.bed
  # or will use the name of the file from the URL
  #curl -O https://raw.githubusercontent.com/biodataprog/GEN220_data/main/data/rice_random_exons.bed
fi
awk '{ sum += $3-$2 } END { print sum}' $FILENAME
