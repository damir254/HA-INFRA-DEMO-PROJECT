variable "project_name" {
  description = "Project name"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "private_subnet_ids" {
  description = "Private subnet IDs for ASG"
  type        = list(string)
}

variable "app_security_group_id" {
  description = "Security group ID for application instances"
  type        = string
}

variable "target_group_arn" {
  description = "Target group ARN to attach ASG to"
  type        = string
}

variable "desired_capacity" {
  description = "Desired number of instances"
  type        = number
}

variable "min_size" {
  description = "Minimum number of instances"
  type        = number
}

variable "max_size" {
  description = "Maximum number of instances"
  type        = number
}

variable "app_port" {
  description = "Application port"
  type        = number
  default     = 80
}
