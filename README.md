# AWS Infrastructure Automation with Terraform and Ansible

This project demonstrates how to provision an EC2 instance on AWS using Terraform and then configure it using Ansible. It is organized into modular, reusable sections (chapters) to mirror professional infrastructure automation practices.





## ✅ Chapter 1: Basic Setup – EC2 Instance + Ansible SSH Ping

## project structure 

ansible-terraform-aws-project/
├── .gitignore
├── README.md
├── 01-basic-setup/
│   ├── terraform/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   │   ├── provider.tf
│   │   ├── terraform.tfvars         
│   │   └── .terraform/              
│   └── ansible/
│       ├── inventory.ini       
│       └── ping.yml



### Goals:
- Provision an EC2 instance using Terraform
- Verify SSH connectivity using Ansible `ping` module

### Tools Used:
- AWS (EC2)
- Terraform
- Ansible

---

## ⚙️ How to Use

### 1. Setup Terraform

Navigate into the Terraform directory:

```bash
cd 01-basic-setup/terraform

terraform init
terraform plan -var-file="terraform.tfvars"
terraform apply -var-file="terraform.tfvars"


aws_region = "eu-central-1"
key_name   = "your-keypair-name"
ami_id     = "ami-0faab6bdbac9486fb" # Example: Amazon Linux 2 AMI in Frankfurt

cd ../ansible


[web]
<EC2_PUBLIC_IP> ansible_user=ubuntu ansible_ssh_private_key_file=~/.ssh/your-key.pem

ansible-playbook -i inventory.ini ping.yml

You should receive a successful pong response.




