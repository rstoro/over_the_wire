#!/usr/bin/env bash

echo password: 56a9bf19c63d650ce78e6ec0354ee45e
echo \$0
echo cat /etc/bandit_pass/bandit33
echo \$0 is special, it expands to the name of the shellscript
echo which will be called durring the input loop, spawning a new shell
ssh -p 2220 bandit32@bandit.labs.overthewire.org

