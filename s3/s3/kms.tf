resource "aws_kms_key" "backend-s3bucket-key" {
  description             = "This key is used to encrypt bucket objects"
  deletion_window_in_days = 10
  enable_key_rotation     = true
}

resource "aws_kms_alias" "backend-s3bucket-key-alias" {
  name          = "alias/default-encryption-key"
  target_key_id = aws_kms_key.backend-s3bucket-key.id
}