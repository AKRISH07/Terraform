variable "Region" {
  default = "us-east-1"
}

variable "AMI" {
  default = "ami-02fc81b0ee0f08d18"
}

variable "Instance_Type" {
  default = "t2.micro"
}

variable "SSH_Port" {
  default=22
}

variable "HTTP_Port" {
  default=80
}

variable "IP" {
  default = "157.46.75.140/32"
}
