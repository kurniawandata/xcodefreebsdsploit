#!/bin/sh
#xcodefreebsdsploit v0.1 beta 1
os=$(uname -s)

case "$os" in
    FreeBSD)
        freebsd_version=$(uname -r)
        case "$freebsd_version" in
            12.1-RELEASE)
                ./exploit
                ;;
            12.0-RELEASE)
                ./47081.sh
                ;;
            *)
                echo "Versi FreeBSD anda belum ada exploit-nya di tool ini."
                ;;
        esac
        ;;
esac
