terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  alias  = "awseast"
}

provider "aws" {
  region = "us-west-2"
  alias  = "awswest"
}