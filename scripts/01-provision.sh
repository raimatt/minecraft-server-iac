#!/usr/bin/env bash
# Stage 1: build the AWS infrastructure with Terraform.
set -euo pipefail

# Always run from the repo's terraform folder no matter where you call this.
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "${SCRIPT_DIR}/../terraform"

echo "==> Initializing Terraform"
terraform init -input=false

echo "==> Applying Terraform (this creates the VPC, security group, key, and EC2 instance)"
terraform apply -auto-approve

echo
echo "==> Done. Your server's public IP is:"
terraform output -raw server_public_ip
echo
