output "demo-bucket_name" {
  description = "Name of the demo S3 bucket"
  value       = aws_s3_bucket.project_demo.bucket
}
