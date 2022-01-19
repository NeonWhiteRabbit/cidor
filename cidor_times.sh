#!/bin/bash
File="times_final.txt"
echo "#!/bin/bash" > Final_Results.sh
Lines=$(cat $File)
for Line in $Lines
do
echo "cat cidor_results.txt | grep '$Line'" >> Updated_Results.txt
cat Updated_Results.txt >> Final_Results.sh
chmod +x Final_Results.sh
./Final_Results.sh
	done
