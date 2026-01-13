output "bucket_name" {
  description = "The name of the S3 bucket"
  value       = aws_s3_bucket.my_bucket.bucket
}
output "dynamodb_table_name" {
  description = "The name of the DynamoDB table for Terraform locks"
  value       = aws_dynamodb_table.terraform_locks.name
}
