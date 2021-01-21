#!/usr/bin/env bash

echo key: level26.sshkey
echo password: 5czgV9L3Xx8JPOyRbXh6lQbmIOWvPT6Z
echo We are being fed into a text file.
echo If we minimize the window, we get pushed into more, preventing us from
echo disconnecting.  From there we can hit 'v' to go into vi, and then run the
echo command ':e .' to go to the home directory.
echo We can set the shell to be bash with 'shell=/bin/bash'.
echo We can then enter a new shell with ':sh'.
echo From there we can just pull the password as bandit27
echo './bandit27-do cat /etc/bandit_pass/bandit27'
ssh -p 2220 -i level26.sshkey bandit26@bandit.labs.overthewire.org

