variable "ami" {
  default = "ami-041e2ea9402c46c32"
}

variable "instance_type" {
  default = "t2.small"
}

variable "vpc_security_group_ids" {
  default = ["sg-0eb0ffe1f55b4d12b"]
}

variable "zone_id" {
  default = "Z0994447ZVXCLP0MPPND"
}

variable "domain_name" {
  default = "raiyan-m.online"
}