resource "aws_api_gateway_domain_name" "main" {
  regional_certificate_arn = aws_acm_certificate.cert.arn

  domain_name = var.dns_name

  endpoint_configuration {
    types = ["REGIONAL"]
  }
}

resource "aws_api_gateway_base_path_mapping" "v1" {
  api_id      = aws_api_gateway_rest_api.health_api.id
  stage_name  = aws_api_gateway_stage.health_api.stage_name
  domain_name = aws_api_gateway_domain_name.main.domain_name
  base_path   = var.base_mapping
}