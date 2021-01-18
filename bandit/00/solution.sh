#!/usr/bin/env bash

echo password: 'bandit0'
ssh bandit0@bandit.labs.overthewire.org -p 2220 \
    "cat readme"
