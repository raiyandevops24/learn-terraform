resource "aws_instance" "frontend" {
  ami           = "ami-041e2ea9402c46c32" # us-west-2
  instance_type = "t2.small"
  vpc_security_group_ids = ["sg-0eb0ffe1f55b4d12b"]

  tags = {
    Name = "frontend"
  }
}