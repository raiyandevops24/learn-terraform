resource "null_resource" "fruits" {
  for_each = var.fruits
  test_key = each.key
  test_value = each.value
}

variable "fruits" {
  default = {
    apple = {
      name = "apple"
      quantity =20
    }

    banana = {
      name = "banana"
      quantity = 40
    }
  }
}

