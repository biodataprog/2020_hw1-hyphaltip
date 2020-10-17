#!/usr/bin/bash
# your code goes next

curl --no-progress-meter 'https://raw.githubusercontent.com/biodataprog/GEN220_data/main/data/rice_random_exons.bed' | awk '{ sum += $3-$2 } END { print sum}'
