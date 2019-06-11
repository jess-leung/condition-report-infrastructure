data "aws_iam_policy_document" "instance-assume-role-policy" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }
  }
}

resource "aws_iam_role" "test_role" {
  name = "developer_role"
  assume_role_policy = "${data.aws_iam_policy_document.instance-assume-role-policy.json}"
}