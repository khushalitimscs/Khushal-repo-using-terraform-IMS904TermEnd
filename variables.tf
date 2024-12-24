variable "aws_region" {
  default = "ap-south-1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami_id" {
  default = "ami-09b0a86a2c84101e1"
}

variable "disk_size" {
  default = 30
}

variable "inbound_ports" {
  default = [22, 80, 443]
}
