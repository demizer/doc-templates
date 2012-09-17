#!/bin/bash

if [ "$*" == "" ]; then
    for i in `ls *.rst`; do
        rst2pdf $i
    done
else
    rst2pdf $*
fi

if [ -d pdf ]; then
    rm -rf pdf/*
    mv *.pdf pdf/
else
    mkdir pdf
fi
