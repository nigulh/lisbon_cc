#!/bin/bash
wget      --recursive      --no-clobber      --page-requisites      --html-extension      --convert-links      --restrict-file-names=windows      http://www.ecatsbridgenews.com/eblsystems/default.asp?dir=2019MixedTeamsLisbon
mv www.ecatsbridgenews.com/eblsystems/2019MixedTeamsLisbon/* input/
rm -r www.ecatsbridgenews.com

