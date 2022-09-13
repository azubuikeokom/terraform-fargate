terraform {
  # backend "remote" {
  #   organization = "3k"
  #   workspaces {
  #     name = "dev-workspace"   
  #   }
  # }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.8"
}
provider "aws" {
  access_key = var.aws-access-key
  secret_key = var.aws-secret-key
  region     = var.region
}