#!/usr/bin/env bash

echo password: koReBOKuIDDepwhWk7jZC0RTdopnAYKh
ssh bandit5@bandit.labs.overthewire.org -p 2220 \
    'find inhere/ -size "1033c" ! -executable -exec file {} \; | \
    sed -n "s/:.*ASCII text.*//p" | \
    while read i; do cat $i; done'

