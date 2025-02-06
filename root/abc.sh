#!/bin/bash

# Check Amazon Certificate Manager (SSL)
echo "Checking Amazon Certificate Manager (SSL)..."
aws acm list-certificates
echo ""

# Check Amazon Route 53 (DNS service)
echo "Checking Amazon Route 53 (DNS service)..."
aws route53 list-hosted-zones
echo ""

# Check Amazon CloudFront (CDN)
echo "Checking Amazon CloudFront (CDN)..."
aws cloudfront list-distributions
echo ""

# Check Amazon EC2 (Server)
echo "Checking Amazon EC2 (Server)..."
aws ec2 describe-instances
echo ""

# Check Amazon Auto Scaling group (Scale on demand)
echo "Checking Amazon Auto Scaling group (Scale on demand)..."
aws autoscaling describe-auto-scaling-groups
echo ""

# Check Amazon VPC (Virtual Private Cloud: Private Network)
echo "Checking Amazon VPC (Private Network)..."
aws ec2 describe-vpcs
echo ""

# Check Amazon RDS (Relational Database Service)
echo "Checking Amazon RDS (Relational database services)..."
aws rds describe-db-instances
echo ""

# Check Amazon DynamoDB (State-locking for tfstate file)
echo "Checking Amazon DynamoDB (State-locking for tfstate file)..."
aws dynamodb list-tables
echo ""

# Check Amazon S3 (Storing backend and achieving versioning)
echo "Checking Amazon S3 (Storing backend and achieving versioning)..."
aws s3 ls
echo ""

# Check Amazon CloudWatch (Alarm when CPU utilization increases or decreases)
echo "Checking Amazon CloudWatch (Alarms)..."
aws cloudwatch describe-alarms
echo ""

echo "All service checks completed."

