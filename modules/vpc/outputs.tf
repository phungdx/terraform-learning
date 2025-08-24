output "vpc_id" {
  value = aws_vpc.ccVPC.id
}

output "public_subnets" {
  value = [
    aws_subnet.ccPublicSubnet1, aws_subnet.ccPublicSubnet2
  ]
}

output "private_subnets" {
  value = [
    aws_subnet.ccPrivateSubnet1, aws_subnet.ccPrivateSubnet2
  ]
}