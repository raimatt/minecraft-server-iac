terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

# The AWS provider reads your credentials from ~/.aws/credentials
# (or from environment variables). You do NOT put any keys in this file.
# See the README for how to set those credentials, especially for the
# AWS Academy Learner Lab.
provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project   = "acme-minecraft-server"
      ManagedBy = "terraform"
    }
  }
}
