resource "aws_security_group" "Security_Group_TF_SC_KS" {
  name = "Security_Group_TF_SC_KS"
  ingress {
      from_port = "${var.SSH_Port}"
      to_port = "${var.SSH_Port}"
      protocol = "tcp"
      cidr_blocks = ["${var.IP}"]
  }
  ingress {
      from_port = "${var.HTTP_Port}"
      to_port = "${var.HTTP_Port}"
      protocol = "tcp"
      cidr_blocks = ["${var.IP}"]
  }
  egress {
    from_port = 0
    protocol = "-1"
    to_port = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}