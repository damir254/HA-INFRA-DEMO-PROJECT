module "vpc" {
  source = "../../modules/vpc"

  project_name         = var.project_name
  environment          = var.environment
  vpc_cidr             = var.vpc_cidr
  availability_zones   = var.availability_zones
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
}

module "sg" {
  source = "../../modules/sg"

  project_name = var.project_name
  environment  = var.environment
  vpc_id       = module.vpc.vpc_id
  app_port     = var.app_port
}

module "alb" {
  source = "../../modules/alb"

  project_name          = var.project_name
  environment           = var.environment
  vpc_id                = module.vpc.vpc_id
  public_subnet_ids     = module.vpc.public_subnet_ids
  alb_security_group_id = module.sg.alb_security_group_id
  app_port              = var.app_port
  health_check_path     = var.health_check_path
}

module "asg" {
  source = "../../modules/asg"

  project_name          = var.project_name
  environment           = var.environment
  instance_type         = var.instance_type
  private_subnet_ids    = module.vpc.private_subnet_ids
  app_security_group_id = module.sg.app_security_group_id
  target_group_arn      = module.alb.target_group_arn
  desired_capacity      = var.desired_capacity
  min_size              = var.min_size
  max_size              = var.max_size
  app_port              = var.app_port
}



