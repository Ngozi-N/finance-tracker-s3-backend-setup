#provider "aws" {
#  region = "eu-west-2"
#}

#resource "aws_s3_bucket" "terraform_state" {
#  bucket = "finance-tracker-tfstate"
#}

#resource "aws_s3_bucket_versioning" "state_versioning" {
#  bucket = aws_s3_bucket.terraform_state.id
#  versioning_configuration {
#    status = "Enabled"
#  }
#}

#resource "aws_dynamodb_table" "terraform_locks" {
#  name         = "finance-tracker-locks"
#  billing_mode = "PAY_PER_REQUEST"
#  hash_key     = "LockID"

#  attribute {
#    name = "LockID"
#    type = "S"
#  }

#  lifecycle {
#    ignore_changes = [read_capacity, write_capacity] # Prevent Terraform from failing if already exists
#  }
#}

