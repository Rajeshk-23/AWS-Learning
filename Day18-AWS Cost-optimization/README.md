**AWS Cost Optimization Project: Event-Driven Serverless with Lambda**

# Introduction
This project demonstrates how DevOps and Cloud Engineers can implement cloud cost optimization in real-time organizational settings using AWS Lambda functions and an event-driven serverless architecture. Cost optimization is a crucial aspect of cloud management, often overlooked after migrating to the cloud. This project focuses on identifying and cleaning up "stale" AWS resources to prevent unnecessary costs.

**Problem Statement: Uncontrolled Cloud Costs**
Organizations migrate to the cloud primarily for two reasons:

# Reduce infrastructure overhead: Eliminating the need to set up and maintain physical data centers.
Optimize infrastructure cost: Shifting from large upfront investments to a pay-as-you-go model.
However, simply moving to the cloud does not guarantee cost reduction if resources are not managed efficiently. A common scenario leading to increased cloud costs is the creation of stale resources.

What are stale resources?
These are resources created by developers or engineers that are no longer in use but have been forgotten and not deleted. Examples include:

EC2 instances and their attached volumes that are terminated but their snapshots remain.
S3 buckets with old or unused content.
EKS clusters left running without a purpose.
Manually monitoring hundreds of AWS resources for staleness is impractical and prone to errors, leading to unexpected high cloud bills.

## Solution: Automated Stale EBS Snapshot Deletion with AWS Lambda
This project tackles the problem of stale resources by demonstrating an automated solution for EBS volume snapshot deletion.

## Architecture:
AWS Lambda Function: A serverless compute service that runs code in response to events.
Python Code with Boto3: The core logic is written in Python, utilizing the boto3 library to interact with AWS APIs.
AWS API Interaction: Boto3 allows the Lambda function to:
Fetch all existing EBS snapshots.
Fetch all existing EBS volumes.
Fetch all running EC2 instances.
**Logic for Stale Snapshot Identification:**
The Python code identifies snapshots that are not associated with an existing volume or whose associated volume is not attached to a running EC2 instance.
It also considers scenarios where the instance or volume (or both) might have been deleted, leaving behind orphaned snapshots.
Automated Deletion: Once a snapshot is identified as stale, the Lambda function automatically deletes it.
Event-Driven Trigger (AWS CloudWatch - Optional): While the Lambda function can be manually invoked, it can also be scheduled to run at regular intervals (e.g., daily, weekly) using AWS CloudWatch Events (EventBridge Scheduler) for continuous cost optimization.
Permissions Required:
The IAM role associated with the Lambda function needs specific permissions to perform its tasks:

ec2:DescribeSnapshots
ec2:DeleteSnapshot
ec2:DescribeVolumes
ec2:DescribeInstances
These permissions ensure the Lambda function can list, identify, and delete the relevant resources.

How to Use This Project:
Access the Code: The complete Python code and project notes are available in the associated GitHub repository.
Create a Lambda Function: In your AWS account, create a new Lambda function.
Configure Lambda:
Set the runtime to Python.
Increase the default execution timeout (e.g., to 10 seconds) as the default 3 seconds might be insufficient.
Update IAM Role: Attach a custom IAM policy to the Lambda function's execution role, granting the necessary ec2:Describe* and ec2:DeleteSnapshot permissions.
Deploy and Test:
Paste the Python code into the Lambda function.
Create a test EBS snapshot (and an associated EC2 instance/volume) to observe the function's behavior.
Manually invoke the Lambda function to see it in action.
Delete the associated EC2 instance and volume, leaving the snapshot stale, and then re-run the Lambda function to confirm its deletion.
Automate (Optional): Set up a CloudWatch Event rule to trigger the Lambda function on a schedule.
Important Note on Cost: Be mindful that creating AWS resources (EC2 instances, EBS volumes, snapshots) will incur costs. Always remember to delete all created resources after your demonstration to avoid unexpected charges.

###### Conclusion

This project serves as a practical example of how DevOps engineers can implement proactive cost optimization strategies on AWS. By automating the cleanup of stale resources like EBS snapshots, organizations can significantly reduce their cloud expenditure and maintain an efficient cloud environment. The principles demonstrated here can be extended to optimize costs for other AWS services such as S3, RDS, EKS, and more. This is a fundamental skill for any cloud and DevOps professional.

**Demonstration of Cost-Optimization**




<img width="1299" height="656" alt="image" src="https://github.com/user-attachments/assets/53a4d06f-c91e-4231-b88a-01c64147adfe" />


