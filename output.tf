output "health_api_invoke_url" {
  value = "${aws_api_gateway_deployment.health_api.invoke_url}${var.environment}"
}