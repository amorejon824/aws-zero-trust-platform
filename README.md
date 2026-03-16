# AWS Zero Trust Security Platform (Terraform)

This project demonstrates a security-focused AWS architecture deployed entirely using Terraform.

The goal was to design an environment where multiple AWS services work together to detect, analyze, and respond to potential threats.

## Architecture

Internet
   ↓
AWS WAF
   ↓
Application Load Balancer
   ↓
EC2 Application Tier (private subnet)
   ↓
Private Database Tier

Security Monitoring:

CloudTrail → GuardDuty → EventBridge → SNS Alerts

## Infrastructure Components

- Custom VPC with public and private subnets
- Application Load Balancer
- EC2 instances behind the load balancer
- Security groups enforcing least privilege access
- AWS WAF protecting the application layer
- CloudTrail logging AWS API activity
- GuardDuty threat detection
- EventBridge routing security events
- SNS alert notifications

## Security Demonstration

To validate the security controls, simulated malicious requests were sent to the application.

AWS WAF detected and blocked the attack using the AWS Managed Rules Common Rule Set.

GuardDuty generated findings which were routed through the alert pipeline.

## Infrastructure as Code

All resources were deployed using Terraform.

## Screenshots

### WAF Blocking Malicious Request
![WAF Block](screenshots/waf-block.png)

### GuardDuty Findings
![GuardDuty](screenshots/guardduty-findings.png)

### Application Load Balancer
![ALB](screenshots/alb-details.png)

### VPC Subnets
![Subnets](screenshots/vpc-subnets.png)

### Terraform Deployment
![Terraform](screenshots/terraform-apply.png)
