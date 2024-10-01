<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.69.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_acm_certificate.cert](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate) | resource |
| [aws_acm_certificate_validation.cert](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate_validation) | resource |
| [aws_api_gateway_api_key.fidelis](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_api_key) | resource |
| [aws_api_gateway_base_path_mapping.v1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_base_path_mapping) | resource |
| [aws_api_gateway_deployment.health_api](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_deployment) | resource |
| [aws_api_gateway_domain_name.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_domain_name) | resource |
| [aws_api_gateway_method_settings.health_api](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_method_settings) | resource |
| [aws_api_gateway_rest_api.health_api](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_rest_api) | resource |
| [aws_api_gateway_stage.health_api](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_stage) | resource |
| [aws_api_gateway_usage_plan.fidelis](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_usage_plan) | resource |
| [aws_api_gateway_usage_plan_key.fidelis](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_usage_plan_key) | resource |
| [aws_cloudwatch_log_group.health_api](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |
| [aws_route53_record.cert](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_route53_record.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_ssm_parameter.vpc_link](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssm_parameter) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_base_mapping"></a> [base\_mapping](#input\_base\_mapping) | O mapeamento do caminho base usado para direcionar requisições à API correta no API Gateway. | `string` | n/a | yes |
| <a name="input_dns_name"></a> [dns\_name](#input\_dns\_name) | O nome DNS que será usado para o serviço. Será associado ao Route 53 para mapeamento de domínio. | `string` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | O ambiente em que os recursos serão implantados, como dev, hom ou prod. | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | O nome do projeto. Será usado para etiquetar recursos e fornecer um identificador comum. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | A região da AWS onde os recursos serão criados. O valor padrão é us-east-1. | `string` | `"us-east-1"` | no |
| <a name="input_route53_zone_id"></a> [route53\_zone\_id](#input\_route53\_zone\_id) | O ID da zona hospedada no Route 53 onde o nome DNS será criado. | `string` | n/a | yes |
| <a name="input_vpc_link"></a> [vpc\_link](#input\_vpc\_link) | O identificador do VPC Link usado para conectar recursos, como API Gateway a serviços dentro de uma VPC. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_health_api_invoke_url"></a> [health\_api\_invoke\_url](#output\_health\_api\_invoke\_url) | n/a |
<!-- END_TF_DOCS -->