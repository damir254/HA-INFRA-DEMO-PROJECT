output "vpc_id" {
  description = "VPC ID"
  value       = module.vpc.vpc_id
}

output "public_subnet_ids" {
  description = "Public subnet IDs"
  value       = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  description = "Private subnet IDs"
  value       = module.vpc.private_subnet_ids
}

output "alb_security_group_id" {
  description = "ALB security group ID"
  value       = module.sg.alb_security_group_id
}

output "app_security_group_id" {
  description = "App security group ID"
  value       = module.sg.app_security_group_id
}

output "alb_dns_name" {
  description = "Public DNS name of the ALB"
  value       = module.alb.alb_dns_name
}

output "target_group_arn" {
  description = "Target group ARN"
  value       = module.alb.target_group_arn
}

output "autoscaling_group_name" {
  description = "Auto Scaling Group name"
  value       = module.asg.autoscaling_group_name
}

output "launch_template_id" {
  description = "Launch template ID"
  value       = module.asg.launch_template_id
}
