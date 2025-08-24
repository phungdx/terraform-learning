output "vpc_id" {
  value = module.ccVPC.vpc_id
}

output "load_balancer_dns_name" {
  value = module.ccWebserver.load_balancer_dns_name
}