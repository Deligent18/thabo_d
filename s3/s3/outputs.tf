output "auth" {
  value = aws_s3_bucket.terraform-state.id
}

output "dynamo" {
  value = aws_dynamodb_table.dynamodb.name
}