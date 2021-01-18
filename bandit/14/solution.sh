#!/usr/bin/env bash

echo key: level14.sshkey.private
echo password: 4wcYUJFw0k0XLShlDzztnTBHiqxU3b3e
ssh -p 2220 -i level14.sshkey.private bandit14@bandit.labs.overthewire.org \
    "cat /etc/bandit_pass/bandit14 | \
    nc 127.0.0.1 30000"
