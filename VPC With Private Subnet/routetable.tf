resource "aws_route_table" "MyRT" {
  vpc_id = aws_vpc.MyVPC.id
  route {
      cidr_block = "0.0.0.0/0"
      gateway_id = aws_internet_gateway.IG.id
  }
  tags = {
    "Name" = "RT-Public"
  }
}

resource "aws_route_table" "NATRT" {
  vpc_id = aws_vpc.MyVPC.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.NAT.id
  }
}

resource "aws_route_table_association" "RTA-Public" {
  subnet_id = aws_subnet.Public.id
  route_table_id = aws_route_table.MyRT.id
}

resource "aws_route_table_association" "RTA-Private" {
  subnet_id= aws_subnet.Private.id
  route_table_id = aws_route_table.NATRT.id
}