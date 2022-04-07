resource "aws_instance" "Instance-1" {
  ami = "ami-02728facc64539c01"
  instance_type = "t2.micro"
  key_name = "Terraform"
  tags = {
    "Name" = "First Instance"
  }
  security_groups = ["Security Group"]
  
}

resource "aws_ebs_volume" "Volume_EBS" {
  availability_zone = "us-east-1b"
  size = 2
  type = "gp2"
  tags = {
    "Name" = "EBS Volume"
  }
}

resource "aws_volume_attachment" "Volume_Attach" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.Volume_EBS.id
  instance_id = aws_instance.Instance-1.id
}


