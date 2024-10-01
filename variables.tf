variable "region" {
  default = "us-east-1"
}

variable "project_name" {
  type = string
}

variable "vpc_link" {
  type = string
}

variable "environment" {
  type = string
}

variable "dns_name" {
  type = string
}

variable "route53_zone_id" {
  type = string
}

variable "base_mapping" {
  type = string
}