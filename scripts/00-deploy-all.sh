#!/usr/bin/env bash
# Run the whole pipeline in order: provision, configure, then verify.
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

"${SCRIPT_DIR}/01-provision.sh"
"${SCRIPT_DIR}/02-configure.sh"
"${SCRIPT_DIR}/03-connect.sh"

echo
echo "==> Pipeline complete. Your Minecraft server is live."
