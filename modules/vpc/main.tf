resource "aws_vpc" "name" {
  cidr_block = var.cidr_block
  tags = merge({
    "name" = "${var.environment}"
    }, var.common_tags )
}