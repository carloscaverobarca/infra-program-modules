resource "aws_vpc" "vpc_ccb" {
  cidr_block = cidrsubnet(var.vpc_ccb.cidr_block,0,0)

  tags = {
    name = var.vpc_ccb.name
  }
}

resource "aws_subnet" "subnets" {
  for_each = var.config_subnets

  vpc_id                  = aws_vpc.vpc_ccb.id
  cidr_block              = each.value.cidr_block
  availability_zone       = each.value.availability_zone
  map_public_ip_on_launch = each.value.map_public_ip

  tags = {
    name = each.value.name
  }
}