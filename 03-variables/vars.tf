variable "x" {
  default = 10
}

variable "y" {
  default = "Hello World"
}

variable "z" {
  default = true
}

variable "l" {
  default = [10, 200, Arham, false]
}


# output

output "x" {
  value = var.x
}

output "x1" {
  value = "Value of x - ${var.x}"
}

output "l" {
  value = "Value of the 1st element - ${var.l[0]}"
}