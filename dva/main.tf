terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>5.0"
    }
  }
}

provider "aws" {
  region = var.region

  default_tags {
    tags = {
      "purpose": "learning for certification"
    }
  }
}

module "ec2_basic" {
  source = "./ec2_basic"
}
