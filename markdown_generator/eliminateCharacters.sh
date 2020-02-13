#!/bin/bash

function procesa(){
    cat $1 | iconv -f UTF-8 -t ISO8859-15 --verbose
    cat $1 | sed -e 's/δ/delta/g' | sed -e 's/—/-/g' | sed -e 's/–/-/g' | sed -e "s/’//g" | sed -e 's/ϵ/e/g' | sed -e 's/⩽/<=/g' | sed -e "s/á/{\\\\'a}/g"| sed -e "s/é/{\\\\'e}/g" | sed -e "s/ı́/{\\\\'i}/g" | sed -e "s/ó/{\\\\'o}/g" | sed -e "s/ú/{\\\\'u}/g" | sed -e 's/β/B/g' | sed -e 's/“/"/g' | sed -e 's/”/"/g' | sed -e 's/ź/z/g' | sed -e 's/ł/l/g' > $1.bak
    mv $1 $1.bak.bak
    mv $1.bak $1
    mv $1.bak.bak $1.bak
}

procesa proceedings.bib
procesa pubs.bib

