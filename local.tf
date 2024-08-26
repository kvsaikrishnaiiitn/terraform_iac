data "aws_caller_identity" "current" {}
data "aws_region" "current" {}

locals {
  aws_region = data.aws_region.current.name
  account_id = data.aws_caller_identity.current.account_id
  common_tags = {
    environment = var.environment
    created_by = "terraform"
  }
}