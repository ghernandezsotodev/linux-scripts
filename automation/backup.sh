#!/usr/bin/env bash
set -euo pipefail
DIR="$1"
DEST="/home/$(whoami)/backups"
mkdir -p "$DEST"
tar -czf "$DEST/backup-$(date +%F-%H%M).tar.gz" "$DIR"
echo "$(date) - BACKUP of $DIR created" >> "$DEST/backup.log"
