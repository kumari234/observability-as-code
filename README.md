# AWS Observability-as-Code Platform

Infrastructure-as-Code project using:

- Terraform
- AWS
- New Relic
- GitHub Actions
- NRQL
- CloudWatch
- Kinesis Firehose
- AWS IAM
- Docker
- Argo CD

## Project Objective

Build a production-style observability-as-code platform where:

1. AWS infrastructure is managed using Terraform.
2. New Relic dashboards and alerts are managed using Terraform.
3. GitHub Actions performs Terraform validation and planning.
4. AWS authentication uses GitHub OIDC.
5. Terraform state is stored remotely.
6. Security and quality checks are automated.
7. Infrastructure drift can be detected.
8. Infrastructure and observability configuration can be recovered from code.

## Environments

- Development
- Production

## Repository Structure

```text
environments/
modules/
scripts/
.github/