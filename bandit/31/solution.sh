#!/usr/bin/env bash

echo 'TMPDIR=\$(mktemp -d)'
echo 'cd \$TMPDIR'
echo 'git clone ssh://bandit31-git@localhost/home/bandit31-git/repo'
echo 'cat README.md'
echo 'rm .gitignore'
echo "echo 'May I come in?' >> key.txt"
echo 'git add key.txt'
echo 'git push'
echo 'cd ~'
echo 'rm -rf \$TMPDIR'
echo password: 47e603bb428404d265f59c42920d81e5
ssh -p 2220 bandit31@bandit.labs.overthewire.org

