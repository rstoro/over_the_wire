#!/usr/bin/env bash

echo password: pIwrPrtPN36QITSp3EQaw936yaFoFgAB
ssh bandit4@bandit.labs.overthewire.org -p 2220 \
    'find inhere/ -exec file {} \; | \
    sed -n "s/:.*text.*//p" | \
    while read i; do cat $i; done'

