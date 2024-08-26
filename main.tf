# terraform {
#   backend "s3" {
#     bucket = "terraform_bucket"
#     key = "statefile.tf"
#     region = "us-east-1"
#     dynamodb = "terraform_db"
#   }
# }

terraform {
  backend "remote" {
    organization = "test"
    workspaces {
      name = "test"
    }
  }
}

module "vpc" {
  source      = "./modules/vpc"
  cidr_block = var.vpc_cidr
  environment = var.environment
  common_tags = local.common_tags
}
