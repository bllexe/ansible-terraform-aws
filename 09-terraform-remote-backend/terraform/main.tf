resource "aws_s3_bucket" "terraform_state" {
    bucket = var.bucket_name


   tags = {
     Name = "terraform-state"
   }
  
}

resource "aws_dynamodb_table" "terraform_locks" {
  name         = var.dynamodb_table
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name = "Terraform Lock Table"
  }
}
