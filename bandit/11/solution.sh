#!/usr/bin/env bash

echo password: IFukwKGsFW8MOq3IRFqrxE1hxTNEbUPR
ssh bandit11@bandit.labs.overthewire.org -p 2220 \
    "cat data.txt | \
    tr 'a-zA-Z' 'n-za-mN-ZA-M'"

