#!/bin/ksh
echo date, > file1.txt
head -1 cityConfirmed.csv | sed 's/,/\n/g' | awk '/T_C/ {print "\x27"substr($0,5,4)"-"substr($0,9,2)"-"substr($0,11,2)"\x27,"}' >> file1.txt
echo cases > file2.txt
grep Wuhan cityConfirmed.csv|sed 's/,/\n/g' | tail +5 >> file2.txt
paste file1.txt file2.txt | tr -d '\t' | head -28 > wuhan.csv
rm -f filel[12].txt
