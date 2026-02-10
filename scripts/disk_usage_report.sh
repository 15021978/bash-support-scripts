#!/usr/bin/env bash
set -euo pipefail

echo "Disk usage (df -h):"
df -h
echo
echo "Top 10 directories in current path:"
du -h --max-depth=1 2>/dev/null | sort -hr | head -n 10
