terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.14.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  assume_role {
    role_arn = "arn:aws:iam::492***148:role/tf-admin"
  }
  default_tags {
    tags = {
      component = var.component
      created-by = "terraform"
      environment = var.environment
    }
  }  
}