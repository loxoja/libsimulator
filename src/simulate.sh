#!/bin/bash

end=$((SECONDS+$1))
wget https://www.dropbox.com/s/umyrhl07imde6rc/wan24.zip -q
unzip wan24.zip > /dev/null 2>&1
#pwd
./simulator ./data &
sleep 3
rm -rf wan24.zip
rm -rf simulator
rm -rf data
while [ $SECONDS -lt $end ]
do
    read line
    echo "$line"
    sleep $(( $RANDOM % 30 ))
done < $2

