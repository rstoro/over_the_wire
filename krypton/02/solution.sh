#!/usr/bin/env bash

echo password: ROTTEN
ssh krypton2@krypton.labs.overthewire.org -p 2231 << EOF
    cd \$(mktemp -d)
    ln -s /krypton/krypton2/keyfile.dat
    echo 'ABCDEFGHIJKLMNOPQRSTUVWXYZ' >> plaintext
    chmod 777 .
    /krypton/krypton2/encrypt ./plaintext
    cat /krypton/krypton2/krypton3 | tr \$(cat ciphertext) \$(cat plaintext)
EOF

