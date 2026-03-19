aws_region   = "eu-central-1"
environment  = "dev"
project_name = "tf-ha"

vpc_cidr             = "10.0.0.0/16"
availability_zones   = ["eu-central-1a", "eu-central-1b"]
public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnet_cidrs = ["10.0.11.0/24", "10.0.12.0/24"]

app_port          = 80
health_check_path = "/"

instance_type    = "t3.micro"
desired_capacity = 2
min_size         = 2
max_size         = 4
