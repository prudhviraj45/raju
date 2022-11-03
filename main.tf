resource "aws_instance" "my-machine" {
  ami = var.ami 
  instance_type = var.instance_type 
  subnet_id     = "subnet-09bc5a26e96ae9d20"
  key_name = var.key_name
  tags = {
    Name = "my-ec2-machine"
  }
}

resource "aws_s3_bucket" "tfbucket" {

  bucket = "prudhvitf-bucket"

    tags = {
        Name    = "cloudearl Bucket"
        Environment = "Cloudearl"
    }
}

resource "aws_db_instance" "default" {
# Allocating the storage for database instance.
  allocated_storage    = 10
# Declaring the database engine and engine_version
  engine               = var.engine
  engine_version       = var.engine_version
# Declaring the instance class
  instance_class       = var.instance_class
  name                 = var.name
# User to connect the database instance 
  username             = var.username
# Password to connect the database instance 
  password             = var.password
  parameter_group_name = var.parameter_group_name
# password to connect the database instance
  db_subnet_group_name = var.db_subnet_group_name
  skip_final_snapshot = var.skip_final_snapshot
}

resource "aws_dynamodb_table" "state_locking" {
  hash_key = "tolock"
  name     = "dynamodb-state-locking"
  attribute {
    name = "tolock"
    type = "S"
  }
  billing_mode = "PAY_PER_REQUEST"
}

