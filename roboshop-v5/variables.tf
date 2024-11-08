
variable "domain_name" {
  default = "raiyan-m.online"
}

variable "components" {
  default = {
    frontend = {                # each.key
      instance_type = "t3.micro"  # each.value
    }
    mongo = {
      instance_type = "t3.micro"
    }
    catalogue = {
      instance_type = "t3.micro"
    }

  }
}