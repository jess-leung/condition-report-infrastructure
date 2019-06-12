#!/usr/bin/env bash

echo "Provisioning infrastructure..."

terraform init
terraform plan
terraform apply
