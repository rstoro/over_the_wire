#!/usr/bin/env bash

echo password: UsvVyFSfZZWbi6wgC7dAFyFuR6jQQUhR 
ssh bandit9@bandit.labs.overthewire.org -p 2220 \
    "strings data.txt | \
    grep -E '={2,}' |\
    awk '{print \$2}'"

