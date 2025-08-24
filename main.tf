module "ccVPC" {
  source = "./modules/vpc"

  vpc_tags             = var.vpc_tags
  vpc_cidr             = local.vpc_cidr
  availability_zones   = local.availability_zones
  public_subnet_cidrs  = local.public_subnet_cidrs
  private_subnet_cidrs = local.private_subnet_cidrs
}

module "ccWebserver" {
  source = "./modules/webserver"

  cc_vpc_id         = module.ccVPC.vpc_id
  cc_public_subnets = module.ccVPC.public_subnets
}

module "ccDB" {
  source = "./modules/db"

  cc_private_subnet_cidrs = local.private_subnet_cidrs
  cc_private_subnets      = module.ccVPC.private_subnets
  cc_vpc_id               = module.ccVPC.vpc_id

  db_az            = local.availability_zones[0]
  db_name          = "ccDBInstance"
  db_user_name     = var.db_user_name
  db_user_password = var.db_user_password
}