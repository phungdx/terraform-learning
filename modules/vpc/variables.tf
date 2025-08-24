variable "vpc_tags" {
  description = "Tags for VPC"
  type        = map(any)
}

variable "vpc_cidr" {
  description = "CIDR for VPC"
  type        = string
}

variable "availability_zones" {
  description = "AZs for subnets"
  type        = list(string)
}

variable "public_subnet_cidrs" {
  description = "CIDRs for Public Subnets"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "CIDRs for Private Subnets"
  type        = list(string)
}