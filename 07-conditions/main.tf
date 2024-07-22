resource "aws_route53_record" "frontend" {
  zone_id = "Z0994447ZVXCLP0MPPND"
  name    = "frontend.dev.raiyan-m.online"
  type    = "A"
  ttl     = var.ttl == "" ? 15 : var.ttl
  records = ["1.1.1.1"]
}

variable "ttl" {}