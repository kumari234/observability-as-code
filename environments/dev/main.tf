locals {
  project_name = "observability-as-code"
}

resource "aws_s3_bucket" "project_demo" {
  bucket = "${local.project_name}-${var.environment}-demo"

  tags = {
    Name = "${local.project_name}-${var.environment}-demo"

  }
}