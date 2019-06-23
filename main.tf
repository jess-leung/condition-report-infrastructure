provider "aws" {
  region     = "us-west-1"
}

resource "aws_elastic_beanstalk_application" "condition-report-service" {
  name        = "condition-report-service-eb"
  description = "Elastic beanstalk app for condition report service"
}

resource "aws_elastic_beanstalk_environment" "tfenvtest" {
  name                = "condition-report-service-eb"
  application         = "${aws_elastic_beanstalk_application.condition-report-service.name}"
  solution_stack_name = "64bit Amazon Linux 2018.03 v2.12.14 running Docker 18.06.1-ce"
}