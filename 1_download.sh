#!/bin/bash
rm -r input
mkdir input
dir=$1
wget      --recursive      --no-clobber      --page-requisites      --html-extension      --convert-links      --restrict-file-names=windows      http://systems.eurobridge.org/default.asp?dir=$dir
mv systems.eurobridge.org/$dir/* input/
rm -r systems.eurobridge.org
echo "replacing spaces in filenames"
find input -type d -depth -name "* *" -exec bash -c 'mv "$1" "${1// /_}"' _ {} \;
find input -depth -name "* *" -exec bash -c 'mv "$1" "${1// /_}"' _ {} \;
