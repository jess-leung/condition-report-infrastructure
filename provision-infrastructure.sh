#!/usr/bin/env bash

echo "Storing credentials..."

if [ -z "$AWS_ACCESS_KEY_ID" ]
then
      echo "\$var is empty"
else
      echo "\$var is NOT empty"
fi

#mkdir -p /.aws
#
#echo "[default]" >> /.aws/credentials
#echo "aws_access_key_id=${AWS_SECRET_ACCESS_KEY}" >> /.aws/credentials
#echo "aws_secret_access_key=${AWS_ACCESS_KEY_ID}" >> /.aws/credentials

echo "Provisioning infrastructure..."

terraform init
terraform plan
terraform apply
