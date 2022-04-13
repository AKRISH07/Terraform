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

resource "aws_route_table_association" "RTA1" {
  subnet_id = aws_subnet.Public-1.id
  route_table_id = aws_route_table.MyRT.id
}

resource "aws_route_table_association" "RTA2" {
  subnet_id = aws_subnet.Public-2.id
  route_table_id = aws_route_table.MyRT.id
}