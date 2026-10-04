locals {
  project_name = "observability-as-code"
}

resource "aws_s3_bucket" "project_demo" {
  bucket = "${local.project_name}-${var.environment}-demo"

  tags = {
    Name = "${local.project_name}-${var.environment}-demo"

  }
}


resource "aws_s3_bucket_public_access_block" "project_demo" {
  bucket = aws_s3_bucket.project_demo.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_kms_key" "s3" {
  description             = "KMS key for ${local.project_name} S3 encryption"
  deletion_window_in_days = 30
  enable_key_rotation     = true

  tags = {
    Name = "${local.project_name}-s3-kms"
  }
}

resource "aws_kms_alias" "s3" {
  name          = "alias/${local.project_name}-s3"
  target_key_id = aws_kms_key.s3.key_id
}

resource "aws_s3_bucket_server_side_encryption_configuration" "project_demo" {
  bucket = aws_s3_bucket.project_demo.id

  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = aws_kms_key.s3.arn
      sse_algorithm     = "aws:kms"
    }

    bucket_key_enabled = true
  }
}
