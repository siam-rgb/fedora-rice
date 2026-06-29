#!/usr/bin/env bash

set -Eeuo pipefail

clear

echo
echo "========================================="
echo "           FedoraRice Installer"
echo "========================================="
echo

echo "[*] Checking system..."

if [[ ! -f /etc/fedora-release ]]; then
    echo "[ERROR] This installer only supports Fedora."
    exit 1
fi

echo "[OK] Fedora detected."

if ! command -v plasma-apply-lookandfeel >/dev/null 2>&1; then
    echo "[ERROR] KDE Plasma not detected."
    exit 1
fi

echo "[OK] KDE Plasma detected."

echo
echo "Installer framework ready."
