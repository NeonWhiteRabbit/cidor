#!/bin/bash

echo "#!/bin/bash" > copy1.sh
File="loc_results.txt"
Lines=$(cat $File)
for Line in $Lines
do
echo "cp /opt/cidor/temp/'$Line' /opt/cidor/downloads" >> copy1.sh
done

chmod 777 copy1.sh
./copy1.sh
