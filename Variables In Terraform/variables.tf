variable "Variable-1" {
  type = string
  default = "First String"
}

variable "MultiLine" {
  type = string
  default = <<EOH
  Multiline
  String
  EOH
}

variable "MapExample" {
  type = map
  default = {
    "val1"= "Value1"
    "val2"= "Value2"
  }
}

variable "Array" {
  type = list
  default = ["Value 1","Value 2"]
}
output "Output-1" {
  value = "${var.Array[0]}"

}