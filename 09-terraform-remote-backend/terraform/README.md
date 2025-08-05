# ☁️ Terraform Remote Backend with S3 and DynamoDB Lock

This project demonstrates how to configure a **remote backend** for Terraform using **AWS S3** for storing the `terraform.tfstate` file and **DynamoDB** for state locking and consistency.

---

## 🔍 What This Project Does

- Creates an S3 bucket to store the Terraform state file
- Enables versioning and encryption for security
- Creates a DynamoDB table to manage state locks
- Configures Terraform to use S3 and DynamoDB as a remote backend

---

## 📁 Project Structure

``` bash

09-terraform-remote-backend/
├── terraform/
│ ├── main.tf # AWS resources (S3, DynamoDB)
│ ├── backend.tf # Remote backend config
│ ├── variables.tf # Configurable names
│ └── outputs.tf # Optional output for debugging

```

---

## 🛠 Requirements

- AWS CLI configured (`aws configure`)
- Terraform v1.x or higher
- AWS IAM user with permission to manage S3 and DynamoDB

---

## ⚙️ Setup Steps

### 1. Clone the project

```bash
git clone https://github.com/your-repo/09-terraform-remote-backend.git
cd 09-terraform-remote-backend/terraform

terraform init
terraform apply -auto-approve




