data "aws_ssm_parameter" "vpc_link" {
  name = var.vpc_link
}