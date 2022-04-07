resource "aws_instance" "Instance-1" {
  ami = "${var.AMI}"
  instance_type = "${var.Instance_Type}"
  key_name = "Terraform"
  count=2
  tags = {
    "Name" = "Instance-${count.index}"
  }
  security_groups = ["Security_Group_TF_SC_KS"]

}
