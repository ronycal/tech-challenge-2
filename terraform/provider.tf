provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project     = "Tech Challenge 2"
      Environment = var.environment
      ManagedBy   = "Terraform"
    }
  }
}