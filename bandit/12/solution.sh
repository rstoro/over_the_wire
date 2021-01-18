#!/usr/bin/env bash

echo password: 5Te8Y4drgCRfCx8ugdwuEX8KFC6k2EUu
ssh bandit12@bandit.labs.overthewire.org -p 2220 << EOF
    # dir path
    DIR=/tmp/123852163713

    # make dir
    mkdir \$DIR

    # change working dir
    cd \$DIR

    # read hex dump and output tarbball
    xxd -r ~/data.txt | zcat | bzcat | zcat >> data4.bin

    # de-tar
    tar -xf data4.bin
    tar -xf data5.bin
    tar -xf data6.bin

    # read file
    zcat data8.bin

    # cleanup
    cd ~
    rm -rf \$DIR
EOF
