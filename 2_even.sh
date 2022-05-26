#!/bin/bash
#file=$1
rm -r even
mkdir even
cp -r input even/
for file in $(ls input/*/*.pdf); do
    echo "start $file"
    remainder=$(gs -q -dNOSAFER -dNODISPLAY -c "($file) (r) file runpdfbegin pdfpagecount = quit")
    modulo=$(( $remainder % 2 ))
    if [ $modulo = "1" ]; then
        echo "Add to $file"
        gs -dNOSAFER -dNOPAUSE -sDEVICE=pdfwrite -sOUTPUTFILE="even/$file" -dBATCH "$file" ./blank.pdf
    else
        cp $file even/$file
    fi
done
mv even/input/* even
rm -r even/input
