output "dashboard_name" {
  description = "Name of the CloudWatch monitoring dashboard"
  value       = aws_cloudwatch_dashboard.monitoring.dashboard_name
}

output "dashboard_url" {
  description = "AWS CloudWatch dashboard URL"
  value       = "https://ap-south-1.console.aws.amazon.com/cloudwatch/home?region=ap-south-1#dashboards:name=${aws_cloudwatch_dashboard.monitoring.dashboard_name}"
}