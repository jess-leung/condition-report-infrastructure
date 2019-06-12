provider "aws" {
  region     = "us-east-1"
  shared_credentials_file = "/aws/credentials"
}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}