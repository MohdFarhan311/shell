providers{
  aws = {
    region = "us-east-1"
  }
}
resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-farhan-name-12345"
  
  lifecycle {
    prevent_destroy = false
  }

resource "aws_s3_bucket_versioning" "versioning" {
    bucket = aws_s3_bucket.terraform_state.id
    versioning_configuration {
      status = "Enabled"
    }
  }
} 
resource "aws_serverside_encryption_configuration" "encryption" {
    bucket = aws_s3_bucket.terraform_state.id
    rule { 
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }

resource "dynamodb_table" "terraform_locks" {
  name         = "terraform-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}   