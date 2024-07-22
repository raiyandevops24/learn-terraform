resource "aws_instance" "frontend" {
  count = length(var.components)
  ami           = data.aws_ami.ami.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = data.aws_security_groups.sg.ids

  tags = {
    Name = "${var.components[count.index]}.dev"
  }
}

# resource "aws_route53_record" "frontend" {
#   zone_id = data.aws_route53_zone.zone.zone_id
#   name    = "frontend.dev.${var.domain_name}"
#   type    = "A"
#   ttl     = 15
#   records = [aws_instance.frontend.private_ip]
# }
