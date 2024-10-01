resource "aws_acm_certificate" "cert" {
  domain_name       = var.dns_name
  validation_method = "DNS"
  lifecycle {
    create_before_destroy = true
  }
}


resource "aws_route53_record" "cert" {
  for_each = {
    for dvo in aws_acm_certificate.cert.domain_validation_options : dvo.domain_name => {
      name   = dvo.resource_record_name
      record = dvo.resource_record_value
      type   = dvo.resource_record_type
    }
  }

  allow_overwrite = true
  name            = each.value.name
  records         = [each.value.record]
  ttl             = 60
  type            = each.value.type
  zone_id         = var.route53_zone_id
}

resource "aws_acm_certificate_validation" "cert" {
  certificate_arn         = aws_acm_certificate.cert.arn
  validation_record_fqdns = [for record in aws_route53_record.cert : record.fqdn]
}

resource "aws_route53_record" "main" {
    zone_id = var.route53_zone_id
    name = var.dns_name
    type = "A"

    alias {
      evaluate_target_health = true
      name = aws_api_gateway_domain_name.main.regional_domain_name
      zone_id = aws_api_gateway_domain_name.main.regional_zone_id
    }
}