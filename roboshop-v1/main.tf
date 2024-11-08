resource "aws_instance" "frontend" {
  ami           = var.ami # us-west-2
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = "frontend.dev"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = var.zone_id
  name    = "frontend.dev.${var.domain_name}"
  type    = "A"
  ttl     = 15
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "mongo" {
  ami           = var.ami # us-west-2
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = "mongo.dev"
  }
}

resource "aws_route53_record" "mongo" {
  zone_id = var.zone_id
  name    = "mongo.dev.${var.domain_name}"
  type    = "A"
  ttl     = 15
  records = [aws_instance.mongo.private_ip]
}

resource "aws_instance" "catalogue" {
  ami           = var.ami # us-west-2
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = "catalogue.dev"
  }
}

resource "aws_route53_record" "catalogue" {
  zone_id = var.zone_id
  name    = "catalogue.dev.${var.domain_name}"
  type    = "A"
  ttl     = 15
  records = [aws_instance.catalogue.private_ip]
}