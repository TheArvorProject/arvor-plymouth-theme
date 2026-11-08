#!/bin/sh
set -e

if [ "$1" = "configure" ]; then
    if command -v plymouth-set-default-theme >/dev/null 2>&1; then
        plymouth-set-default-theme arvor
    fi
    if command -v update-initramfs >/dev/null 2>&1; then
        update-initramfs -u
    fi
fi

exit 0
