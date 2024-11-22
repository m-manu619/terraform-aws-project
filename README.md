# Terraform AWS Project

This repository contains the Terraform configuration and scripts to provision AWS resources, including EC2 instances, RDS, and S3, using AWS services.

## Project Overview

This project demonstrates how to use Terraform to:

- Launch an EC2 instance (using the `t2.micro` or ARM-compatible instance type).
- Create an RDS instance.
- Set up an S3 bucket for storage.

The infrastructure is defined using Terraform configuration files, and the project can be managed via version control with GitHub.

## Requirements

Before running this project, make sure you have the following:

- **Terraform**: Installed on your local machine. You can download it from [Terraform's official website](https://www.terraform.io/downloads).
- **AWS CLI**: Installed and configured with access to your AWS account. You can configure the AWS CLI with `aws configure`.
- **Git**: To clone the repository and track changes.
- **Access to an AWS Account**: To create resources like EC2 instances, RDS, and S3.

## Setup Instructions

1. **Clone the repository:**

    ```bash
    git clone https://github.com/m-manu619/terraform-aws-project.git
    cd terraform-aws-project
    ```

2. **Initialize Terraform:**

    Run the following command to initialize the project and download the necessary provider plugins.

    ```bash
    terraform init
    ```

3. **Configure AWS Credentials:**

    If you haven't configured your AWS credentials yet, do so by running:

    ```bash
    aws configure
    ```

    You'll need to enter your AWS Access Key ID, Secret Access Key, and preferred region.

4. **Run Terraform Plan:**

    To see what changes Terraform will make in your AWS account, run:

    ```bash
    terraform plan
    ```

5. **Apply the Terraform Configuration:**

    To provision the infrastructure on AWS, use the following command:

    ```bash
    terraform apply
    ```

    Type `yes` when prompted to confirm the action.

6. **Verify the Resources:**

    - Check the EC2 instance's status via the AWS Console or by using the AWS CLI.
    - Access the RDS endpoint from your application.
    - Inspect the S3 bucket for storage.

## Files in the Project

- `main.tf`: Defines the core infrastructure (EC2, RDS, and S3).
- `.gitignore`: Ignores Terraform's state files and other unnecessary files.
- `README.md`: This file, describing the project and setup.

## Important Notes

- Ensure that your AWS account has the necessary permissions to create EC2, RDS, and S3 resources.
- You may need to adjust the instance types and resource configurations based on your account limits and requirements.

## Cleanup

To destroy the infrastructure and remove all resources created by Terraform, use the following command:

```bash
terraform destroy
