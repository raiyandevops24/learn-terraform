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
  default = [10, 200, "Arham", false, "Helllo World"]
}

variable "m" {
  default = {
    course= "DevOps"
    trainer="John"
  }
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

output "m" {
  value = "Course name - ${var.m["course"]} and Trainer is - ${var.m["trainer"]}"
}