variable "Region" {
  default = "us-east-1"
}

variable "VPC_CIDR_Block" {
  default = "10.0.0.0/16"
}

variable "AZ" {
  default=["us-east-1a","us-east-1b"]
}