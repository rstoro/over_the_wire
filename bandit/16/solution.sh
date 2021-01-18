#!/usr/bin/env bash

echo password: cluFn7wTiGryunymYOu4RcffSxQluehd
echo run nmap -p 31000-32000 127.0.0.1 \| awk -F '\$1 ~ /^[0-9]+/ {print $1,$2,$3}'
echo enumerate, running 'openssl s_client -ign_eof -connect 127.0.0.1:$PORT'
echo feed the current password to this connection and see which one returns the value
ssh -p 2220 bandit16@bandit.labs.overthewire.org << EOF
    openssl s_client -ign_eof -connect 127.0.0.1:31790
    cluFn7wTiGryunymYOu4RcffSxQluehd
EOF
