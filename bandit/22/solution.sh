#!/usr/bin/env bash

echo password: Yk7owGAcWjwMVRwrTesJEwB7WVOiILLI
ssh -p 2220 bandit22@bandit.labs.overthewire.org << EOF
    cat /etc/cron.d/cronjob_bandit23
    cat /usr/bin/cronjob_bandit23.sh
    cat /tmp/\$(echo I am user bandit23 | md5sum | cut -d '' -f 1)
EOF

