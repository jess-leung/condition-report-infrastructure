#!/usr/bin/env bash

echo "Provisioning infrastructure..."

terraform init
terraform plan
terraform apply -auto-approve main.tf
terraform apply -auto-approve rds/rds.tf
