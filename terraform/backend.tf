terraform {
  required_version = ">= 1.8.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.32"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.14"
    }
  }

  backend "s3" {
    bucket         = "oficinaconectada-terraform-state"
    key            = "oficinaconectada-platform-runtime/terraform.tfstate"
    region         = "sa-east-1"
    dynamodb_table = "oficinaconectada-terraform-lock"
    encrypt        = true
  }
}
