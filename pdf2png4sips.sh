#!/bin/sh
echo "SIPS-Converter on MacOSX with SIPS"
echo "----------------------------------"
echo "Enter directory for file modification"
read Input_directory
cd $Input_directory
for file in *.pdf; do 
	sips -s format png $file --out "${file%\.*}".png && rm -f "$file"; 
done

