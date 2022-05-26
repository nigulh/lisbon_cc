#!/bin/bash
dir=$1
rm -r merged
mkdir merged
for i in $(ls input); do
    gs -dNOSAFER -dNOPAUSE -sDEVICE=pdfwrite -sOUTPUTFILE=merged/$i.orig.pdf -dBATCH input/$i/*
    gs -dNOSAFER -dNOPAUSE -sDEVICE=pdfwrite -sOUTPUTFILE=merged/$i.even.pdf -dBATCH even/$i/*
done
rm -r data/$dir
mkdir data/$dir
gs -dNOSAFER -dNOPAUSE -sDEVICE=pdfwrite -sOUTPUTFILE=data/$dir/$dir.orig.pdf -dBATCH merged/*.orig.pdf
gs -dNOSAFER -dNOPAUSE -sDEVICE=pdfwrite -sOUTPUTFILE=$dir.pdf -dBATCH merged/*.even.pdf
cp $dir.pdf data/$dir/
mv input even merged data/$dir/