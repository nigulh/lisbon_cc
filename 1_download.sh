#!/bin/bash
rm -r input
mkdir input
dir=$1
wget      --recursive      --no-clobber      --page-requisites      --html-extension      --convert-links      --restrict-file-names=windows      http://www.ecatsbridgenews.com/eblsystems/default.asp?dir=$dir
mv www.ecatsbridgenews.com/eblsystems/$dir/* input/
rm -r www.ecatsbridgenews.com
find input -depth -name "* *" -execdir rename "s/ /_/g" "{}" ";"
