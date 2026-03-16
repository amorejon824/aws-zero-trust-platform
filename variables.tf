variable "aws_region" {
  description = "AWS region for deployment"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name prefix used for tagging and naming resources"
  type        = string
  default     = "zero-trust-platform"
}

variable "db_password" {
  description = "Password for the RDS database"
  type        = string
  sensitive   = true
}

variable "alert_email" {
  description = "Email address to receive security alerts from SNS"
  type        = string
}