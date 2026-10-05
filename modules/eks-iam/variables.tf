variable "project_name" {
  description = "Project name used for resource naming"
  type        = string
}

variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "cluster_role_name" {
  description = "IAM role name for the EKS CONTROL PLANE"
  type        = string
}
