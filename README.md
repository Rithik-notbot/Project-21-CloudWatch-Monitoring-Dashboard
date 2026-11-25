# Project 21 — CloudWatch Monitoring Dashboard

## Objective
Create an AWS CloudWatch dashboard to monitor EC2 performance metrics from a central location.

## Tools Used
- AWS
- Amazon CloudWatch
- Terraform
- Git and GitHub

## Implementation
- Configured the AWS provider in the `ap-south-1` region.
- Created a CloudWatch dashboard using Terraform.
- Added an EC2 CPU Utilization metric widget.
- Added an EC2 Network In and Out metric widget.
- Configured Terraform outputs for the dashboard name and URL.

## Dashboard Widgets
1. **EC2 CPU Utilization** — displays CPU usage over time.
2. **EC2 Network In and Out** — displays incoming and outgoing network traffic.

## Files
- `versions.tf` — Terraform and AWS provider configuration.
- `main.tf` — CloudWatch dashboard resources and widgets.
- `outputs.tf` — Dashboard name and URL.
- `.gitignore` — Excludes Terraform-generated files.

## Deployment Status

- Terraform CloudWatch dashboard configuration prepared.
- EC2 CPU and Network metric widgets configured using CloudWatch SEARCH expressions.
- Terraform formatting completed.
- Terraform validation successful.
- AWS deployment and live dashboard verification pending account access and approval.
- CloudWatch dashboard screenshot pending approved deployment.

## Expected Deliverables
- Terraform configuration uploaded to GitHub.
- Successful Terraform validation and planning.
- CloudWatch dashboard screenshot after approved deployment.