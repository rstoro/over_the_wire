#!/usr/bin/env bash

echo password: 3ba3118a22e93127a4ed485be72ef5ea
echo 'TMPDIR=\$(mktemp -d)'
echo 'cd \$TMPDIR'
echo 'git clone ssh://bandit27-git@localhost/home/bandit27-git/repo'
echo 'cat repo/README | rev | cut -d ' ' -f 1 | rev'
echo 'cd ~'
echo 'rm -rf TMPDIR'
ssh -p 2220 bandit27@bandit.labs.overthewire.org

