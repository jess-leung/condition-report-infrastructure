#!/usr/bin/env bash

echo "Storing credentials..."

mkdir -p /aws

cat > /aws/credentials << EOF
[default]
aws_access_key_id = ${AWS_ACCESS_KEY_ID}
aws_secret_access_key = ${AWS_SECRET_ACCESS_KEY}
EOF

echo "Provisioning infrastructure..."

terraform init
terraform plan
terraform apply
