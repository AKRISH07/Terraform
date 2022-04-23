provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
      bucket = "bucket-for-static-webpage-hosting"
      key = "myapp/dev/terraform.tfstate"
      region = "us-east-1"
  }
}

resource "aws_vpc" "VPC_Custom" {
  cidr_block = "10.0.0.0/20"
  tags = {
    "Name" = "VPC_Custom"
  }
}