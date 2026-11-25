resource "aws_cloudwatch_dashboard" "monitoring" {
  dashboard_name = "Project-21-Monitoring-Dashboard"

  dashboard_body = jsonencode({
    widgets = [
      {
        type   = "metric"
        x      = 0
        y      = 0
        width  = 12
        height = 6

        properties = {
          title  = "EC2 CPU Utilization"
          region = "ap-south-1"
          view   = "timeSeries"
          period = 300

          metrics = [
            [
              {
                expression = "SEARCH('{AWS/EC2,InstanceId} MetricName=\"CPUUtilization\"', 'Average', 300)"
                id         = "e1"
                label      = "EC2 CPU Utilization"
              }
            ]
          ]
        }
      },
      {
        type   = "metric"
        x      = 12
        y      = 0
        width  = 12
        height = 6

        properties = {
          title  = "EC2 Network In and Out"
          region = "ap-south-1"
          view   = "timeSeries"
          period = 300

          metrics = [
            [
              {
                expression = "SEARCH('{AWS/EC2,InstanceId} MetricName=\"NetworkIn\"', 'Average', 300)"
                id         = "e2"
                label      = "Network In"
              }
            ],
            [
              {
                expression = "SEARCH('{AWS/EC2,InstanceId} MetricName=\"NetworkOut\"', 'Average', 300)"
                id         = "e3"
                label      = "Network Out"
              }
            ]
          ]
        }
      }
    ]
  })
}