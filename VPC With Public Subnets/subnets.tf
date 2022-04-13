resource "aws_subnet" "Public-1" {
cidr_block = "10.0.1.0/24"
vpc_id = aws_vpc.MyVPC.id
availability_zone = "${var.AZ[0]}"
map_public_ip_on_launch = "true"
tags={
    Name= "Public-1"
}
}

resource "aws_subnet" "Public-2" {
cidr_block = "10.0.2.0/24"
vpc_id = aws_vpc.MyVPC.id
availability_zone = "${var.AZ[1]}"
map_public_ip_on_launch = "true"
tags={
    Name= "Public-2"
}
}