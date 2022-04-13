resource "aws_vpc" "MyVPC" {
  cidr_block = var.VPC_CIDR_Block

  tags = {
    "Name" = "MyVPC"
  }
}
