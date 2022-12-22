output "subnets" {
  value = aws_subnet.subnets
}

output "l_subnets" {
  value = length(aws_subnet.subnets)
}

output "vpc_id" {
  value = aws_vpc.vpc_ccb.id
}

output "route_table_id" {
  value = aws_vpc.vpc_ccb.main_route_table_id
}