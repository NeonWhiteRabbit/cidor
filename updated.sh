#!/bin/bash

echo "============================================================================"
echo "============================================================================"
echo "============================================================================"
echo "==================== Open File URL's Downloaded from ======================="
echo "============================================================================"
echo "=============== double check URL's for more possible goodies ==============="
echo "============================================================================"
echo "============================================================================"
echo "============================================================================"
echo "============================================================================"
awk '!a[$0]++' microsoft.txt > location.txt
awk '!a[$0]++' pdf.txt >> location.txt
cat location.txt | cut -d "/" -f 5 | cut -d ":" -f 1 > loc_results.txt

echo "#!/bin/bash" > location1.txt
File="loc_results.txt"
Lines=$(cat $File)
for Line in $Lines
do
echo "cat /opt/cidor/temp/cidor_results.txt | grep -B 22 '$Line\b' | grep '/download/'" >> location1.txt
done

awk '!a[$0]++' location1.txt > location2.txt 
awk '!a[$0]++' location2.txt > location.sh
chmod 777 location.sh

#Add to end, cleat temp and clean files
echo "./copy.sh" >> location.sh
echo "./clear.sh" >> location.sh

#Run shellscript file, show results
./location.sh > final_locations.txt
awk '!a[$0]++' final_locations.txt > finalloc.txt
cat finalloc.txt 

chmod 777 downloaded.sh
./downloaded.sh


