#!/usr/bin/env bash

echo password: 0ef186ac70e04ea33b4c1853d2526fa2
echo 'TMPDIR=\$(mktemp -d)'
echo 'cd \$TMPDIR'
echo 'git clone ssh://bandit28-git@localhost/home/bandit28-git/repo'
echo "git log -p README.md | grep -Po '(?<=password: )(?!\<TBD\>|x{10,})([a-zA-Z0-9]+)' | tail -n 1"
echo 'cd ~'
echo 'rm -rf TMPDIR'
ssh -p 2220 bandit28@bandit.labs.overthewire.org

