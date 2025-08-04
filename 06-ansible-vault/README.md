# 🔐 Ansible Vault with Terraform – Secure Secret Management Demo

This project demonstrates how to securely manage sensitive information (like passwords, tokens, etc.) using **Ansible Vault**, integrated with **Terraform** for provisioning an AWS EC2 instance.

---

## 🧱 Project Structure

```bash

06-ansible-vault/
├── terraform/ # Terraform configs for AWS provisioning
│ ├── provider.tf
│ ├── keypair.tf
│ ├── security_group.tf
│ ├── instance.tf
│ ├── data.tf
│ ├── outputs.tf
├── ansible/ # Ansible playbooks and secrets
│ ├── playbook.yml
│ ├── inventory.ini
│ ├── group_vars/
│ │ └── all/
│ │ └── vault.yml # Encrypted secret variables (Ansible Vault)
│ └── vault_pass.txt # (optional) Vault password file


```

## 🚀 Technologies Used

- **Terraform** – to provision an AWS EC2 instance with key pair and security group
- **Ansible** – for configuration management and automation
- **Ansible Vault** – for managing sensitive variables securely
- **AWS EC2** – Ubuntu-based server for testing deployment

---

## ⚙️ Requirements

- Terraform ≥ 1.3
- Ansible ≥ 2.10
- AWS CLI configured (`aws configure`)
- An AWS account with EC2 access

---

## 🔧 Setup & Usage

### 1. Provision EC2 instance with Terraform

```bash
cd terraform
terraform init
terraform apply -auto-approve
