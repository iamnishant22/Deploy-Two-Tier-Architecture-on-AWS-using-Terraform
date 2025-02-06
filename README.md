**Deploying a Two-Tier Architecture on AWS Using Terraform**


**Overview**

This project demonstrates the deployment of a highly scalable and secure two-tier architecture on AWS using Terraform. The architecture consists of a web tier (Amazon EC2 instances behind a load balancer) and a database tier (Amazon RDS). It includes security best practices, automated scaling, monitoring, and state management.


**Technologies & AWS Services Used**
**Amazon Certificate Manager (ACM)** – Provision and manage SSL/TLS certificates.

**Amazon Route 53** – DNS service for domain name resolution.

**Amazon CloudFront** – Content delivery network (CDN) for fast global content delivery.

**Amazon EC2**– Compute instances for hosting the application.

**Amazon Auto Scaling Group**– Automatically scale EC2 instances based on demand.

**Amazon VPC** – Isolated network environment for security.

**Amazon RDS** – Managed relational database service.

**Amazon DynamoDB**– Used for Terraform state locking.

**Amazon S3**– Stores Terraform state file with versioning enabled.

**Amazon CloudWatch** – Monitors infrastructure and sets up alarms for CPU utilization.

**Infrastructure Setup**

**VPC Configuration:**

Create a custom VPC with public and private subnets.

Configure internet gateway and NAT gateway for secure connectivity.

**Compute Layer:**

Deploy EC2 instances in the public subnet.

Use an auto-scaling group to manage instance scaling.

**Database Layer:**

Deploy an RDS instance in a private subnet.

Configure security groups to restrict access.

**Security & Networking:**

Use security groups and network ACLs to allow only necessary traffic.

Provision an SSL certificate via ACM and configure HTTPS access.

**State Management:**

Store the Terraform state file in an S3 bucket with versioning enabled.

Use DynamoDB for state locking to prevent concurrent modifications.

**Monitoring & Alerts:**

Set up CloudWatch to monitor CPU usage.

Configure alarms to trigger scaling actions if needed.
