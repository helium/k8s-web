data "kubectl_path_documents" "nginx" {
  pattern = "./lb/ingress-nginx.yaml"
  vars = {
    cert = var.zone_cert
    cidr = var.cidr_block
  }
}

locals {
  cluster_name = "${var.cluster_name}-${var.stage}"
}

data "aws_eks_cluster" "eks" {
  name = local.cluster_name
}

data "aws_eks_cluster_auth" "eks" {
  name = local.cluster_name
}

data "aws_caller_identity" "current" {}

data "kubectl_path_documents" "application" {
  pattern = "./argocd/application.yaml"
}

data "aws_iam_role" "rds_web_access_role" {
  name = "rds-web-web-user-access-role" 
}

data "aws_security_group" "rds_access_security_group" {
  name = "rds-access-security-group"
}
