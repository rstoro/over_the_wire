#!/usr/bin/env bash

echo password: uNG9O58gUE7snukf3bvZ0rxhtnjzSGzG
scp -P 2220 bandit25@bandit.labs.overthewire.org:bandit26.sshkey level26.sshkey
ssh -p 2220 bandit25@bandit.labs.overthewire.org << EOF
    cat /etc/passwd | grep bandit26
    cat /usr/bin/showtext
EOF
echo take note of the output, we will abuse the "more" command in the next part

