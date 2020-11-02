#!/usr/bin/env bash                                                                                                                            

shopt -s globstar

docPaths=( ./**/*.doc )

for docPath in "${docPaths[@]}"; do

    pdfPath=$(basename "$docPath" '.doc')'.pdf'

    #lowriter --headless --convert-to pdf "$docPath"
    cp "$docPath" doc/

    printf '%s\n' "$pdfPath"

done
