# output "private_sg_id" {
#   value = aws_security_group.private_sg.id
# }

output "private_subnet_ids" {
  value = [for pri_sub_id in aws_subnet.private_subnet : pri_sub_id.id ]
}

# output "natgw_id" {
#   value = aws_nat_gateway.natgw.id
# }