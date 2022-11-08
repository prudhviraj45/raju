provider "aws" {

    region = "ap-south-1"
    access_key = "access_key"
    secret_key = "secret_key"
}

terraform {
  backend "s3" {
    bucket         = "buckets3ec2"
    key            = "ec2rdss3/terraform.tfstate"
    region         = "ap-south-1"

    dynamodb_table = "table"
    encrypt        = true
  }
}
