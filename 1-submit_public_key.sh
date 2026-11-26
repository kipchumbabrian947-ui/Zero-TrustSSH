#!/usr/bin/env bash
# Displays the public SSH key for submission to the server administrator.

if [ -f "$HOME/.ssh/school.pub" ]; then
    cat "$HOME/.ssh/school.pub"
    echo "REMINDER: Send ONLY this public key. Never share your private key."
else
    echo "ERROR: Public key file does not exist."
    exit 1
fi
