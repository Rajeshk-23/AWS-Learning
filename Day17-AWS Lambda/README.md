
**AWS Lambda Introduction for DevOps Engineers**

This README summarizes the key concepts and practical applications of AWS Lambda for DevOps engineers.

**Introduction to AWS Lambda**
AWS Lambda is a crucial service for DevOps engineers due to its numerous daily use cases, particularly in cloud cost optimization and event-driven actions. This video focuses on the fundamentals of Lambda functions from a DevOps perspective.

# What is Serverless Architecture?
Lambda functions belong to the compute family of AWS services, similar to EC2, but they specifically solve the problem of serverless computing. In a serverless architecture, you are not responsible for managing the underlying servers. AWS automatically provisions and tears down the compute resources as needed, based on your application's requirements.

## Lambda vs. EC2: When to Use Which?
The video highlights the key differences between AWS Lambda (serverless) and EC2 (server architecture):

Server Management: With Lambda, AWS manages the server, whereas with EC2, you manage the instance.
Scaling: Lambda automatically scales up and down based on demand. For EC2, you need to manage auto-scaling manually.
Visibility: You don't get direct IP addresses or detailed instance information for Lambda functions, unlike EC2 where you have complete control and visibility.
Cost Efficiency: Lambda is often more cost-efficient for intermittent workloads because you only pay for the compute time used.
The decision to use serverless or server architecture is typically made by the development and architecture teams, as it depends on how the application is written and designed.

**How DevOps Engineers Use Lambda Functions**
DevOps engineers primarily leverage Lambda for automation and governance rather than application development. Key use cases include:

#### Cloud Cost Optimization: Automating tasks like identifying and deleting stale resources or sending notifications about unused resources. An example is scheduling a Lambda function to run daily at 10 AM via CloudWatch to check for idle resources.
Security and Compliance: Enforcing organizational policies, such as preventing the creation of specific resource types (e.g., EBS volumes of type gp2) or monitoring public access to S3 buckets. A demo related to EBS gp2 to gp3 conversion is available on the speaker's channel.
Routine Activities: Automating regular checks, like monitoring IAM users and roles for unauthorized permission changes.
Practical Demonstration of Lambda Function Creation
The video provides a basic walkthrough of creating a Lambda function:

Search for Lambda in the AWS console.
Click "Create a function".
Choose to author from scratch or use pre-provided samples.
Specify the function name (e.g., test) and runtime (e.g., Python 3.9). Lambda supports languages like Go, Java, Python, Ruby, and Node.js.
Enable Function URL in advanced settings to get a public endpoint for external access.
Understand the Lambda Handler: This is the entry point function that AWS Lambda calls. Its default name is lambda_handler, but it can be changed in the configuration.
Add Triggers: Lambda functions are primarily event-driven. Triggers can be configured from services like CloudWatch (for scheduled events or API events) or S3 (for object creation events).
Configure Permissions: Lambda functions need an IAM role to access other AWS services (e.g., SNS, S3). AWS automatically creates a default role, which can be modified or replaced with an existing custom role.
Environment Variables: You can use environment variables to pass configuration values to your Lambda function, avoiding code modifications.

Function URL Usage: The enabled Function URL can be used to access the application from outside.


