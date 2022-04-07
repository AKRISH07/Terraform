provider "aws" {
  region="us-east-1"
}

resource "aws_ebs_volume" "Volume_EBS" {
  availability_zone = "us-east-1a"
  size = 2
  type = "gp2"
  tags = {
    "Name" = "EBS Volume"
  }
}
