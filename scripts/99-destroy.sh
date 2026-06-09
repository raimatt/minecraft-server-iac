#!/usr/bin/env bash
# Tear everything down so you stop using AWS credits. Run this when you are
# finished, including after your recording.
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "${SCRIPT_DIR}/../terraform"

echo "==> Destroying all AWS resources for this project"
terraform destroy -auto-approve

echo "==> Everything has been removed."
