provider "aws" {
  region     = "us-west-1"
}

resource "aws_s3_bucket" "condition-report-tester-bucket" {
  bucket = "condition-report-tester-bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}