#!/usr/bin/env bash

echo 'TMPDIR=\$(mktemp -d)'
echo 'cd \$TMPDIR'
echo 'git clone ssh://bandit29-git@localhost/home/bandit29-git/repo'
echo 'git checkout dev'
echo 'cat README.md'
echo 'cd ~'
echo 'rm -rf \$TMPDIR'
echo password: bbc96594b4e001778eee9975372716b2
ssh -p 2220 bandit29@bandit.labs.overthewire.org

