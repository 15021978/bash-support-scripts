#!/usr/bin/env bash
set -euo pipefail

SERVICE="${1:-ssh}"

echo "Checking status for service: ${SERVICE}"
systemctl status "${SERVICE}" --no-pager || true
echo
echo "Recent logs:"
journalctl -u "${SERVICE}" -n 30 --no-pager || true
