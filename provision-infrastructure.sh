#!/usr/bin/env bash

echo "Provisioning infrastructure..."

terraform init
terraform plan .
terraform plan rds
terraform apply -auto-approve .
terraform apply -auto-approve rds