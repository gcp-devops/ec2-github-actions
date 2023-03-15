#!/bin/sh

# Make the script to abort if any command fails
set -e

# Print the commands as it is executed. Useful for debugging
set -x

cd environments/development
# Terraform init
terraform init -reconfigure -input=false

terraform fmt --recursive
terraform validate

## Terraform plan
terraform  plan -input=false -var-file="../../variables/development.tfvars"

