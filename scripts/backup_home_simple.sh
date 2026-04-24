#!/bin/bash

SOURCE="$HOME"
DEST="$HOME/backups"
LOG="$DEST/backup.log"
FILE="$DEST/home_backup_$(date +%F_%H-%M-%S).tar.gz"

mkdir -p "$DEST"

echo "[$(date)] Starting backup..." >> "$LOG"

if tar -czf "$FILE" "$SOURCE" 2>> "$LOG"; then
    echo "[$(date)] Backup SUCCESS: $FILE" >> "$LOG"
    find "$DEST" -name "home_backup_*.tar.gz" -mtime +7 -delete
    echo "[$(date)] Old backups removed." >> "$LOG"
else
    echo "[$(date)] Backup FAILED!" >> "$LOG"
    exit 1
fi
