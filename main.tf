provider "aws" {
  region     = "us-west-1"
}

resource "aws_elastic_beanstalk_application" "condition-report-service" {
  name        = "condition-report-service"
  description = "Elastic beanstalk app for condition report service"
}

resource "aws_elastic_beanstalk_environment" "tfenvtest" {
  name                = "condition-report-service"
  application         = "${aws_elastic_beanstalk_application.condition-report-service.name}"
  solution_stack_name = "Single Container Docker 18.06 version 2.12.14"
}