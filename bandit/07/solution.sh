#!/usr/bin/env bash

echo password: HKBPTKQnIay4Fw76bEy8PVxKEDQRKTzs
ssh bandit7@bandit.labs.overthewire.org -p 2220 \
    "grep millionth data.txt | \
    awk '{print \$2}'"

