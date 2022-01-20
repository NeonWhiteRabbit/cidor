#!/bin/bash

ls -S /opt/cidor/downloads/ > downloadfiles.txt 

echo "#!/bin/bash" > loot.sh
File="downloadfiles.txt"
Lines=$(cat $File)
for Line in $Lines
do
echo "file /opt/cidor/downloads/$Line" >> dlfile.txt
done

cat dlfile.txt > loot.sh
chmod 777 loot.sh
./loot.sh > nachos.txt

#Rename all the common files
#Rename to CDF file
cat nachos.txt | grep "V2 Document" | cut -d ":" -f 1 | cut -d "/" -f 5 | cut -d "l" -f 2 | cut -d "." -f 2 > v2.txt
echo "#!/bin/bash" > cdf.sh
File="v2.txt"
Lines=$(cat $File)
for Line in $Lines
do
echo "mv /opt/cidor/downloads/index.html.$Line /opt/cidor/downloads/$Line.CDF" >> cdf.sh
done
chmod 777 cdf.sh
./cdf.sh

#Rename to PDF file
cat nachos.txt | grep "PDF" | cut -d ":" -f 1 | cut -d "/" -f 5 | cut -d "l" -f 2 | cut -d "." -f 2 > pdf_rename.txt
echo "#!/bin/bash" > pdf.sh
File="pdf_rename.txt"
Lines=$(cat $File)
for Line in $Lines
do
echo "mv /opt/cidor/downloads/index.html.$Line /opt/cidor/downloads/$Line.PDF" >> pdf.sh
done
chmod 777 pdf.sh
./pdf.sh

#Rename to WORD file
cat nachos.txt | grep "Microsoft Word 2" | cut -d ":" -f 1 | cut -d "/" -f 5 | cut -d "l" -f 2 | cut -d "." -f 2 > word_rename.txt
echo "#!/bin/bash" > word.sh
File="word_rename.txt"
Lines=$(cat $File)
for Line in $Lines
do
echo "mv /opt/cidor/downloads/index.html.$Line /opt/cidor/downloads/$Line.DOC" >> word.sh
done
chmod 777 word.sh
./word.sh

echo "============================================================================"
echo "============================== PDFs Found =================================="
ls -l /opt/cidor/downloads | grep "PDF"
echo "============================== CDFs Found =================================="
ls -l /opt/cidor/downloads | grep "CDF"
echo "============================== DOCs Found =================================="
ls -l /opt/cidor/downloads | grep "DOC"
echo "============================================================================"
echo "============================================================================"
echo "===================== Follow @n3onhacks on Twitter ========================="
echo "============================================================================"
echo "============================================================================"
echo "============================================================================"
echo "============= all downloaded file are in /opt/cidor/downloads =============="
echo "============================================================================"
echo "============================================================================"

#cleanup
rm word.sh
rm pdf.sh
rm cdf.sh
rm loot.sh
rm downloadfiles.txt
rm dlfile.txt
rm nachos.txt
rm pdf_rename.txt
rm v2.txt
rm word_rename.txt
rm final_locations.txt
rm finalloc.txt
rm copy1.sh
rm location.sh
