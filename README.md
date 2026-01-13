🚀 Terraform AWS Infrastructure Project

This repository contains Terraform code to provision and manage AWS infrastructure using Infrastructure as Code (IaC).
It is mainly used for learning and practicing Terraform with AWS services like S3, VPC, and EKS.

🧠 What is Terraform?

Terraform is an open-source Infrastructure as Code tool by HashiCorp that allows you to:

Define cloud infrastructure using code

Create, update, and delete resources safely

Manage infrastructure across AWS, Azure, GCP, etc.

🛠 Prerequisites

Linux (Ubuntu recommended)

AWS account

AWS CLI configured

Terraform CLI installed

⬇️ Install Terraform on Linux (Ubuntu)
# Update system
sudo apt-get update -y

# Install required packages
sudo apt-get install -y unzip curl

# Download Terraform
curl -LO https://releases.hashicorp.com/terraform/1.6.2/terraform_1.6.2_linux_amd64.zip

# Unzip
unzip terraform_1.6.2_linux_amd64.zip

# Move binary to PATH
sudo mv terraform /usr/local/bin/

# Verify installation
terraform -v

🔑 Configure AWS CLI
aws configure


Provide:

AWS Access Key

AWS Secret Key

Region (e.g. us-east-1)

Output format (json)

▶️ How to Use Terraform
terraform init      # Initialize backend & providers
terraform plan      # Preview infrastructure changes
terraform apply     # Create infrastructure
terraform destroy   # Destroy infrastructure

📁 Project Structure (Example)
.
├── main.tf
├── variables.tf
├── outputs.tf
├── backend/
├── modules/
│   ├── vpc/
│   └── eks/
└── README.md

⚠️ Note
This project is for practice and learning purposes.
Be careful with AWS resources as they may incur costs.
This project is for practice and learning purposes.
Be careful with AWS resources as they may incur costs.
