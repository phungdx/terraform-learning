output "load_balancer_dns_name" {
  description = "Load balancer DNS Name"
  value       = aws_lb.ccLoadBalancer.dns_name
}