#!/usr/bin/env bash

echo password: boJ9jbbUNNfktd78OOpsqOltutMc3MY1
ssh bandit1@bandit.labs.overthewire.org -p 2220 \
    "cat < -"
