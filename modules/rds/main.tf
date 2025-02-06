resource "aws_db_subnet_group" "db-subnet" {
  name       = var.db_sub_name
  subnet_ids = [var.pri_sub_5a_id, var.pri_sub_6b_id]  # Use your private subnet IDs
}

resource "aws_db_instance" "db" {
  identifier              = "nishant-instance"
  engine                  = "mysql"
  engine_version          = "8.0.32"  # Updated to a supported version
  instance_class          = "db.t3.micro"  # Free Tier eligible instance class
  allocated_storage       = 20  # Free Tier allows 20 GB storage
  username                = var.db_username
  password                = var.db_password
  db_name                 = var.db_name
  multi_az                = false  # Free Tier supports single-AZ deployments
  storage_type            = "gp2"
  storage_encrypted       = false
  publicly_accessible     = false
  skip_final_snapshot     = true
  backup_retention_period = 7  # Retain backups for 7 days (Free Tier default)

  vpc_security_group_ids = [var.db_sg_id]  # Security group for the DB instance

  db_subnet_group_name = aws_db_subnet_group.db-subnet.name

  tags = {
    Name = "nishant_project"
  }
}
