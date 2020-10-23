#!/usr/bin/bash
# your code goes next

FILENAME=rice_random_exons.bed
if [ ! -s $FILENAME ]; then
  curl -o rice_random_exons.bed https://raw.githubusercontent.com/biodataprog/GEN220_data/main/data/rice_random_exons.bed
fi
LENGTH=0
while read CHROM START END
do
  EXONLEN=`expr $END - $START`
  LENGTH=`expr $LENGTH + $EXONLEN`
done < rice_random_exons.bed

echo $LENGTH
