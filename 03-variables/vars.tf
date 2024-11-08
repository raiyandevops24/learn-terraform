variable "x" {
  default = 10
}

variable "y" {
  default = "Hello World"
}

variable "z" {
  default = true
}

# values numbers and booleans need not to be quoted
# values in the list need not to be same data ype

variable "l" {
  default = [10, 200, "Arham", false, "Helllo World"]
}

variable "m" {
  default = {
    course= "DevOps"
    trainer="John"
  }
}

variable "c" {
type = number
}

# output

output "x" {
  value = var.x
}

#accessing a variable has a combination with string, need to refer the variable with ${}

output "x1" {
  value = "Value of x - ${var.x}"
}


output "l" {
  value = "Value of the 1st element - ${var.l[0]}"
}

output "m" {
  value = "Course name - ${var.m["course"]} and Trainer is - ${var.m["trainer"]}"
}

output "c" {
  value = var.c
}