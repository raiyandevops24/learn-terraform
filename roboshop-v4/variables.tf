variable "instance_type" {
  default = "t2.small"
}

variable "domain_name" {
  default = "raiyan-m.online"
}

variable "components" {
  default = ["frontend", "mongo", "catalogue"]
}