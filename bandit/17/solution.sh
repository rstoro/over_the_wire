#!/usr/bin/env bash

echo key: level17.sshkey.private
ssh -p 2220 -i level17.sshkey.private bandit17@bandit.labs.overthewire.org \
    "diff passwords.old passwords.new"
