variable "domain_name" {
  default = "raiyan-m.online"
}

variable "components" {
  default = {
    frontend = {
      instance_type = "t3.micro"
    }
    mongo = {
      instance_type = "t3.micro"
    }
    catalogue = {
      instance_type = "t3.small"
    }
  }
}