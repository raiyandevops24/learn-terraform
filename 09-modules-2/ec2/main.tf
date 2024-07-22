resource "aws_instance" "test" {
  ami           = "ami-041e2ea9402c46c32" # us-west-2
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-0eb0ffe1f55b4d12b"]

  tags = {
    Name = "test"
  }
}

output "private_ip" {
  value = aws_instance.test.private_ip
}