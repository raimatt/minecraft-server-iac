variable "aws_region" {
  description = "AWS region to deploy into. Learner Lab is usually us-east-1."
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "A short name used to tag and name the resources."
  type        = string
  default     = "acme-minecraft"
}

variable "instance_type" {
  description = "EC2 instance size. t2.medium gives 4 GB RAM, the same size used in Part 1. t2.micro does not have enough RAM for a Minecraft server."
  type        = string
  default     = "t2.medium"
}

variable "minecraft_port" {
  description = "TCP port the Minecraft server listens on. The default for Java Edition is 25565."
  type        = number
  default     = 25565
}

variable "allowed_ssh_cidr" {
  description = "Which IP range is allowed to reach port 22 for automated configuration with Ansible. 0.0.0.0/0 is open to the world, which is fine for a short lived class demo. For more safety, set this to YOUR_PUBLIC_IP/32."
  type        = string
  default     = "0.0.0.0/0"
}

variable "vpc_cidr" {
  description = "CIDR block for the project VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  description = "CIDR block for the public subnet."
  type        = string
  default     = "10.0.1.0/24"
}
