#!/usr/bin/env bash

echo password: DXjZPULLxYr17uwoI01bNLQbtFemEgo7
ssh bandit6@bandit.labs.overthewire.org -p 2220 \
    'find ../../ -size "33c" -group "bandit6" -user "bandit7" 2>/dev/null | \
    grep -v "Permission denied" | \
    while read i; do cat $i; done'

