#!/bin/bash

# Script used to automatically generate README.Rmd from index.Rmd
# (replacing internal links with complete links to the online documentation
# at https://sen2r.ranghetti.info)

# Launch the script from the main sen2r directory
sed -e "s/](\([^\(\)]*\)\.md)/](https:\/\/sen2r.ranghetti.info\/\1\.html)/g" index.Rmd > temp.Rmd
sed -e "s/https\:\/\/sen2r\.ranghetti\.info\/\.github\/CODE\-OF\-CONDUCT\.html/blob\/main\/.github\/CODE-OF-CONDUCT.md/g" temp.Rmd > README.Rmd
rm temp.Rmd
