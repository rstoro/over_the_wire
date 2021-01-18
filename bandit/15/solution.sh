#!/usr/bin/env bash

echo password: BfMYroe26WYalil77FoDi9qh59eK5xNr
ssh bandit15@bandit.labs.overthewire.org -p 2220 << EOF
    openssl s_client -ign_eof -connect 127.0.0.1:30001
    BfMYroe26WYalil77FoDi9qh59eK5xNr
EOF
