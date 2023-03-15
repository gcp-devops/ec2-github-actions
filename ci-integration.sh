## Integration ##

#!/bin/sh

# Make the script to abort if any command fails
set -e

# Print the commands as it is executed. Useful for debugging
set -x

cd environments/development

terraform init -reconfigure -input=false

terraform fmt --recursive
terraform validate

terraform  plan -input=false -var-file="../../variables/development.tfvars"

terraform  apply -auto-approve -input=false -var-file="../../variables/development.tfvars"
