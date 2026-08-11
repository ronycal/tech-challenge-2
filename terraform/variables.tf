variable "aws_region" {
  description = "AWS Region where resources will be deployed"
  type        = string
}

variable "cluster_name" {
  description = "Amazon EKS Cluster Name"
  type        = string
}

variable "environment" {
  description = "Deployment environment"
  type        = string
}