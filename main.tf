resource "aws_db_instance" "postgres" {

  identifier = "prod-postgres"

  engine = "postgres"

  engine_version = "17.2"

  instance_class = "db.t3.medium"

  allocated_storage = 100

  storage_type = "gp3"

  db_name = var.db_name

  username = var.db_username

  password = var.db_password

  publicly_accessible = false

  multi_az = true

  backup_retention_period = 7

  deletion_protection = false

  skip_final_snapshot = true

}
