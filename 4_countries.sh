#!/bin/bash
dir=$1
rm -r data/$dir
mkdir data/$dir
gs -dNOSAFER -dNOPAUSE -sDEVICE=pdfwrite -sOUTPUTFILE=$dir.pdf -dBATCH merged/*.even.pdf
cp $dir.pdf data/$dir/
mv input even merged data/$dir/