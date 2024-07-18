variable "x" {
  default = 10
}

variable "y" {
  default = "Hello World"
}

variable "z" {
  default = true
}




# output

output "x" {
  value = var.x
}

output "x1" {
  value = "Value of x - ${var.x}"
}