resource "aws_route53_record" "frontend" {
  zone_id = "Z0994447ZVXCLP0MPPND"
  name    = "test.raiyan-m.online"
  type    = "A"
  ttl     = 15
  records = [var.private_ip]
}

variable "private_ip" {}