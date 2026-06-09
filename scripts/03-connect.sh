#!/usr/bin/env bash
# Stage 3: confirm the server is reachable and detect the Minecraft service.
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "${SCRIPT_DIR}/../terraform"

IP="$(terraform output -raw server_public_ip)"

echo "==> Checking the Minecraft server at ${IP} on port 25565"
echo "==> Command: nmap -sV -Pn -p T:25565 ${IP}"
echo
nmap -sV -Pn -p T:25565 "${IP}"
