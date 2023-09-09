# ---------------------------------------------------------------------------------------------------------------------
# OTC - Terraform managed File, please don't change as it will overwritten!
# Template: a1_otc_base/main.tf.tpl
# ---------------------------------------------------------------------------------------------------------------------
terraform {
  required_version = ">= 1.3"
  backend "s3" {}
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4"
    }
  }
}

# ---------------------------------------------------------------------------------------------------------------------
# AWS Configuration
# ---------------------------------------------------------------------------------------------------------------------
provider "aws" {
  region = var.project.aws_regions[0]
}

module "aws_base" {
  source        = "git::https://github.com/otc-code/otc-blue-aws-base.git?ref=v1.0.0"
  cloud_region  = var.project.aws_regions[0]
  global_config = var.global_config
  otc           = var.otc
  project       = var.project
}

output "vpc_id" {
  description = "The ID of the AWS VPC"
  value       = module.aws_base.vpc_id
}


