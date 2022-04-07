provider "aws" {
  region = "us-east-1"
}

resource "aws_security_group" "Security_Group_From_Terraform" {
   name = "Security Group"
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["157.51.132.237/32"] 
  }
  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["157.51.132.237/32"] #http://checkip.amazonaws.com
  }
  egress {
    from_port = 0
    protocol = "-1"
    to_port = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}
