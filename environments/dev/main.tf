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
