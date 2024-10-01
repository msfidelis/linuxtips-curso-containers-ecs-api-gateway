
variable "region" {
  description = "A região da AWS onde os recursos serão criados. O valor padrão é us-east-1."
  default     = "us-east-1"
}

variable "project_name" {
  description = "O nome do projeto. Será usado para etiquetar recursos e fornecer um identificador comum."
  type        = string
}

variable "vpc_link" {
  description = "O identificador do VPC Link usado para conectar recursos, como API Gateway a serviços dentro de uma VPC."
  type        = string
}

variable "environment" {
  description = "O ambiente em que os recursos serão implantados, como dev, hom ou prod."
  type        = string
}

variable "dns_name" {
  description = "O nome DNS que será usado para o serviço. Será associado ao Route 53 para mapeamento de domínio."
  type        = string
}

variable "route53_zone_id" {
  description = "O ID da zona hospedada no Route 53 onde o nome DNS será criado."
  type        = string
}

variable "base_mapping" {
  description = "O mapeamento do caminho base usado para direcionar requisições à API correta no API Gateway."
  type        = string
}
