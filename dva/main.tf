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

module "section_5_6" {
  source = "./section_5_6"
}
