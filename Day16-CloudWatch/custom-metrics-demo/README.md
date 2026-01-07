
**Introduction to CloudWatch**

CloudWatch is a core AWS service for monitoring resources and applications.
It acts as a "gatekeeper" or "watchman" for your AWS cloud, observing activities.
CloudWatch helps with:
Monitoring
Alerting
Reporting
Logging
Key Features of CloudWatch

Monitoring: Plays a critical role in infrastructure and application monitoring for DevOps engineers.
Real-life Metrics: Collects data about AWS service utilization (e.g., API requests, CPU utilization, memory consumption). Metrics help understand the performance and state of your services.
Alarms: Closely associated with metrics. Alarms trigger notifications or actions when a metric crosses a defined threshold (e.g., if CPU utilization exceeds 50%). This helps engineers act on critical issues without constant manual monitoring.
Log Insights: Provides detailed logs of activities on your AWS account, showing which services accessed others, along with timestamps. CloudWatch automatically logs many activities, and this can be enhanced with custom configurations.
Custom Metrics: While CloudWatch tracks many default metrics (e.g., CPU utilization for EC2), it doesn't track everything (e.g., memory utilization). You can send custom metrics to CloudWatch from your applications or instances to monitor specific aspects.
Cost Optimization: CloudWatch can integrate with other services (like Lambda functions) to help identify underutilized resources or perform actions to reduce AWS costs.
Scaling: By integrating with services like Auto Scaling Groups, CloudWatch can trigger scaling actions based on metrics (e.g., increasing EC2 instances if CPU utilization is consistently high).
CloudWatch in Action (Demo Overview)

The video includes two main demos:
Default Metrics: How to configure alarms for default AWS metrics, specifically focusing on EC2 CPU utilization and email notifications via SNS.
Custom Metrics: Demonstrates how to configure and use custom metrics.
Practical Demonstration Steps

Navigating CloudWatch Console:
Access CloudWatch service from the AWS console.
Key features visible on the dashboard include Logs, Metrics, Alarms, and Dashboards.
Log Groups:
CloudWatch automatically creates log groups for various AWS services (e.g., CodeBuild projects).
These log groups contain detailed logs of activities, including build processes, successful or failed operations.
Logs provide historical data, even for deleted projects.
Metrics in CloudWatch:
CloudWatch tracks over a thousand default metrics across various AWS services.
Metrics are collected periodically (e.g., every 5 minutes by default for EC2, configurable to 1 minute for detailed monitoring).
Examples include CPU utilization, disk I/O, network traffic.
Metrics can be viewed as graphs (line, bar, pie) and analyzed for average or maximum values over a period.
Demonstrating CPU Spike and Monitoring:
An EC2 instance was launched for the demo.
A Python script (CPU_spike.py) was used to artificially increase the EC2 instance's CPU utilization.
CloudWatch was used to monitor the CPU utilization metric, showing the spike on its graph.
The video explains the difference between average and maximum aggregation for metrics, emphasizing that organizations typically use average to avoid triggering alarms for transient spikes.
Configuring Alarms:
Purpose: To automate notifications or actions when a metric threshold is breached.
Steps:
Create a new alarm in CloudWatch.
Select the desired metric (e.g., EC2 CPU Utilization for a specific instance).
Define the threshold (e.g., if maximum CPU utilization is greater than or equal to 50% over 1 minute).
Configure the notification action: Use SNS (Simple Notification Service) to send emails.
Create a new SNS topic and provide an email address for notifications.
Give the alarm a name and a descriptive message (e.g., "Priority: EC2 Instance CPU reached 50%").
<img width="1298" height="660" alt="image" src="https://github.com/user-attachments/assets/74321ad4-4acc-4311-a155-471837894c8c" />
<img width="1294" height="653" alt="image" src="https://github.com/user-attachments/assets/bae36881-b0b5-485d-956b-edb3131f9946" />
<img width="1297" height="674" alt="image" src="https://github.com/user-attachments/assets/885fbbb7-420a-478e-b49d-4a3495cf69f9" />


