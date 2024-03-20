#!/bin/sh

# Mendeteksi sistem operasi
os=$(uname -s)

case "$os" in
    FreeBSD)
        freebsd_version=$(uname -r)
        case "$freebsd_version" in
            12.1-RELEASE)
                ./exploit
                ;;
            12.0-RELEASE)
                ./exploit2
                ;;
            *)
                echo "Versi FreeBSD tidak didukung."
                ;;
        esac
        ;;
    OpenBSD)
        openbsd_version=$(uname -r | cut -d. -f1,2)
        case "$openbsd_version" in
            6.6)
                ./66.sh
                ;;
            *)
                echo "Versi OpenBSD tidak didukung."
                ;;
        esac
        ;;
    *)
        echo "Sistem operasi tidak didukung."
        ;;
esac
