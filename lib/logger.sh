#!/usr/bin/env bash

LOG_DIR="logs"
LOG_FILE="$LOG_DIR/install.log"

mkdir -p "$LOG_DIR"
touch "$LOG_FILE"

log() {
    echo "[INFO] $1"
    echo "[INFO] $(date '+%F %T') $1" >> "$LOG_FILE"
}

success() {
    echo "[ OK ] $1"
    echo "[ OK ] $(date '+%F %T') $1" >> "$LOG_FILE"
}

warn() {
    echo "[WARN] $1"
    echo "[WARN] $(date '+%F %T') $1" >> "$LOG_FILE"
}

error() {
    echo "[FAIL] $1"
    echo "[FAIL] $(date '+%F %T') $1" >> "$LOG_FILE"
}
