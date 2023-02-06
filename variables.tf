variable "aws_region" {
  type = string
  default = "us-east-1"
}

variable "cluster_name" {
  type = string
  default = "helium-web"
}

variable "env" {
  default = "dev"
}

variable "zone_id" {
  description = "Route53 zone ID"
  type        = string
  default = "Z0569325L7XT2OOHXNLX"
}

variable "argo_url" {
  default = "argo.web.test-helium.com"
}

variable "zone_cert" {
  default = "arn:aws:acm:us-east-1:694730983297:certificate/5e357031-0723-40d3-9723-7475c6188824"
}

variable "domain_filter" {
  description = "External-dns Domain filter."
  type       = string
  default = "nft.test-helium.com,monitoring.test-helium.com,*.web.test-helium.com"
}

variable "cidr_block" {
  type = string
  default = "10.0.0.0/16"
}