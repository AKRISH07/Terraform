resource "aws_subnet" "Public" {
cidr_block = "10.0.1.0/24"
vpc_id = aws_vpc.MyVPC.id
availability_zone = "${var.AZ[0]}"
map_public_ip_on_launch = "true"
tags={
    Name= "Public"
}
}

resource "aws_subnet" "Private" {
cidr_block = "10.0.2.0/24"
vpc_id = aws_vpc.MyVPC.id
availability_zone = "${var.AZ[0]}"
map_public_ip_on_launch = "false"
tags={
    Name= "Private"
}
}