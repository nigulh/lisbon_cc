#!/bin/bash
dir=$1
rm -r merged
mkdir merged
for i in $(ls input); do
    echo
    echo "###### start $i"
    gs -dNOSAFER -dNOPAUSE -sDEVICE=pdfwrite -sOUTPUTFILE=merged/$i.orig.pdf -dBATCH input/$i/*
    gs -dNOSAFER -dNOPAUSE -sDEVICE=pdfwrite -sOUTPUTFILE=merged/$i.even.pdf -dBATCH even/$i/*
done