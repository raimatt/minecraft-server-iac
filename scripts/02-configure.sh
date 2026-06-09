#!/usr/bin/env bash
# Stage 2: configure the server with Ansible (install Java, the server, and
# the service that starts it).
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "${SCRIPT_DIR}/../ansible"

if [ ! -f inventory.ini ]; then
  echo "inventory.ini not found. Run scripts/01-provision.sh first."
  exit 1
fi

echo "==> Running the Ansible playbook"
ansible-playbook -i inventory.ini playbook.yml

echo
echo "==> Server configured."
