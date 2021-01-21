#!/usr/bin/env bash

echo 'TMPDIR=\$(mktemp -d)'
echo 'cd \$TMPDIR'
echo 'git clone ssh://bandit30-git@localhost/home/bandit30-git/repo'
echo 'git tag -l'
echo 'git show secret'
echo 'cd ~'
echo 'rm -rf \$TMPDIR'
echo password: 5b90576bedb2cc04c86a9e924ce42faf
ssh -p 2220 bandit30@bandit.labs.overthewire.org

