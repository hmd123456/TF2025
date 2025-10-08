# main.tf

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  required_version = ">= 1.0.0"
}

provider "aws" {
  region = "eu-west-2" # Make sure this matches the region you set in aws configure
}

# --- New Resource Block ---
resource "aws_s3_bucket" "example_bucket" {
  # IMPORTANT: S3 bucket names must be globally unique across ALL of AWS.
  # Change 'my-unique-bucket-for-terraform-2025' to something unique.
  bucket = "my-unique-bucket-for-terraform-2025" 

  tags = {
    Name        = "My Terraform Test Bucket"
    Environment = "Dev"
  }
}