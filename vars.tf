data "aws_availability_zones" "available" {}

variable "access_key" {
}

variable "secret_key" {
}

variable "VPC_CIDR" {
  default = "172.98.67.0/27"
}

variable "SUBNET_CIDR" {
  default = "172.98.67.0/28"
}

variable "public_key" {
}

variable "AWS_REGION" {
  default = "us-east-1"
}

variable "AMIS" {
  type = "map"
  default = {
    us-east-1 = "ami-c481fad3"
    us-west-2 = "ami-06b94666"
    eu-west-1 = "ami-c02b04a8"
  }
}

variable "AWS_AZ_1B" {
    default = "us-east-1b"
}
