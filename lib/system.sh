#!/usr/bin/env bash

check_fedora() {
    [[ -f /etc/fedora-release ]]
}

check_internet() {
    ping -c1 1.1.1.1 >/dev/null 2>&1
}

check_kde() {
    command -v plasma-apply-lookandfeel >/dev/null 2>&1
}
