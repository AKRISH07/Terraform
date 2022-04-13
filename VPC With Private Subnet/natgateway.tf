resource "aws_eip" "NAT_EIP" {
  vpc = true
  depends_on =[aws_internet_gateway.IG]
  tags = {
    "Name" = "NAT EIP"
  }
}

resource "aws_nat_gateway" "NAT" {
  allocation_id = aws_eip.NAT_EIP.id
  subnet_id = aws_subnet.Public.id
  tags = {
    "Name" = "Nat Gateway"
  }
}

