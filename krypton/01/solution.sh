#!/usr/bin/env bash

echo password: $(echo 'S1JZUFRPTklTR1JFQVQ=' | base64 -d)
ssh krypton1@krypton.labs.overthewire.org -p 2231 << EOF
    cd /krypton/krypton1/
    cat README
    cat krypton2 | tr 'a-zA-Z' 'n-za-mN-ZA-M'
EOF

