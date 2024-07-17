resource "aws_instance" "web" {
  ami           = "ami-041e2ea9402c46c32" # us-west-2
  instance_type = "t2.micro"

#   network_interface {
#     network_interface_id = aws_network_interface.foo.id
#     device_index         = 0
#   }
#
#   credit_specification {
#     cpu_credits = "unlimited"
#   }
  tags = {
    Name = "demo-for-resource"
  }
}