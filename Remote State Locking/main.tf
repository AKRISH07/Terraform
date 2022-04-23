provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
      bucket = "bucket-tf-state-file"
      key = "myapp/dev/terraform.tfstate"
      region = "us-east-1"
      dynamodb_table = "tftable"
  }
}

resource "aws_vpc" "VPC_Custom" {
  cidr_block = "10.0.0.0/20"
  tags = {
    "Name" = "VPC_Custom"
  }
}