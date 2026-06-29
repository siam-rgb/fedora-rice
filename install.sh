#!/usr/bin/env bash

set -Eeuo pipefail

source lib/logger.sh
source lib/system.sh

clear

echo "======================================="
echo "         FedoraRice Installer"
echo "======================================="
echo

log "Running system checks..."

if check_fedora; then
    success "Fedora detected"
else
    error "Fedora not detected"
    exit 1
fi

if check_kde; then
    success "KDE Plasma detected"
else
    error "KDE Plasma not detected"
    exit 1
fi

if check_internet; then
    success "Internet connection OK"
else
    warn "No internet connection"
fi

echo
success "System ready."
