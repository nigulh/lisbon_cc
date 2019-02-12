#!/bin/bash
for i in $(ls input); do
    gs -dNOPAUSE -sDEVICE=pdfwrite -sOUTPUTFILE=merged/$i.orig.pdf -dBATCH input/$i/*
    gs -dNOPAUSE -sDEVICE=pdfwrite -sOUTPUTFILE=merged/$i.even.pdf -dBATCH even/$i/*
done
gs -dNOPAUSE -sDEVICE=pdfwrite -sOUTPUTFILE=all.orig.pdf -dBATCH merged/*.orig.pdf
gs -dNOPAUSE -sDEVICE=pdfwrite -sOUTPUTFILE=all.even.pdf -dBATCH merged/*.even.pdf
