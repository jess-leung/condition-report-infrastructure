resource "aws_db_instance" "default" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "${var.database_name}"
  username             = "${var.database_user}"
  password             = "${var.database_password}"
  parameter_group_name = "default.mysql5.7"
}