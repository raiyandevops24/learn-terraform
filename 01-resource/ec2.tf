resource "aws_instance" "web" {
  ami           = "ami-041e2ea9402c46c32" # us-west-2
  instance_type = "t2.micro"

  tags = {
    Name = "demo-for-resource"
  }
}