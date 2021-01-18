#!/usr/bin/env bash

echo password: UmHadQclWmgdLOKQ3YNgjWxGoRMb5luK
ssh bandit3@bandit.labs.overthewire.org -p 2220 \
    "find inhere/ -name '.*' -exec cat {} \;"
