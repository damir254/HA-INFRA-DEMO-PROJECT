
<img width="1536" height="1024" alt="AWS HA architecture with CI_CD pipeline" src="https://github.com/user-attachments/assets/f9db7fe1-ca78-4022-92c4-511339dfa75e" />

# Terraform HA AWS Infrastructure (Demo Project)

## Overview

This is a **demo DevOps project** showcasing how to provision highly available AWS infrastructure using Terraform, along with a CI/CD pipeline powered by GitHub Actions and OIDC authentication.

The project is intentionally simplified and can be further improved (e.g., HTTPS, domain setup, tighter IAM permissions).

---

## Architecture

* VPC with public and private subnets across 2 AZs
* Internet Gateway + NAT Gateways (per AZ)
* Application Load Balancer (public)
* Auto Scaling Group with EC2 instances (private subnets)
* Security Groups controlling traffic flow

---

## Features

* Modular Terraform structure (vpc, sg, alb, asg)
* Remote state using S3 + DynamoDB locking
* Dynamic AMI lookup (no hardcoding)
* High availability across multiple AZs

---

## CI/CD Pipeline

### CI (Pull Requests → main)

* terraform fmt
* terraform init
* terraform validate
* terraform plan

### CD (Push → main)

* terraform init
* terraform plan
* terraform apply *(currently disabled for safety)*

---

## Authentication

* GitHub Actions uses **OIDC** to assume AWS IAM role
* No static AWS credentials stored in the repository

---

## Improvements (Next Steps)

* Enable HTTPS (ACM + ALB listener 443)
* Add Route53 domain
* Implement autoscaling policies
* Restrict IAM role permissions
* Add multiple environments (dev/stage/prod)

---

## Author

Damir Corbic

