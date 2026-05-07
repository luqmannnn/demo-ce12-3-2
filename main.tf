provider "aws" {
  region = "ap-southeast-1"
}

terraform {
  required_version = "~> 1.15.0"

  backend "s3" {
    bucket = "sctp-ce12-tfstate-bucket" # Change this
    key    = "luqman-ce12-7may.tfstate" # Change this
    region = "ap-southeast-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.44.0"
    }
  }
}


resource "aws_s3_bucket" "s3_tf" {
  bucket_prefix = "luqman-ce12-7may-bucket"
}