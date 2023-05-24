# --- networking/outputs.tf ---
output "vpc_id" {
  value = aws_vpc.som_vpc_dev.id
}

output "db_subnet_group_name" {
  value = aws_db_subnet_group.som_rds_subnet_group.*.name
}

output "db_security_group" {
  value = [aws_security_group.som_sg["rds"].id]
}

output "public_sg" {
  value = [aws_security_group.som_sg["public"].id]
}

output "public_subnets" {
  value = aws_subnet.som_public_subnet.*.id
}

