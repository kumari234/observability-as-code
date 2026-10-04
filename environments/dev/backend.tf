terraform {
  backend "s3" {
    bucket       = "observability-as-code-tfstate-042134552486"
    key          = "environments/dev/terraform.tfstate"
    region       = "ap-south-1"
    use_lockfile = true

  }
}