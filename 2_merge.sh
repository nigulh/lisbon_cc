#!/bin/bash
for i in $(ls input); do
    gs -dNOPAUSE -sDEVICE=pdfwrite -sOUTPUTFILE=merged/$i.pdf -dBATCH input/$i/*
done
gs -dNOPAUSE -sDEVICE=pdfwrite -sOUTPUTFILE=all.pdf -dBATCH merged/*
