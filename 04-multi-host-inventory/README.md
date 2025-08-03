# 📦 Section 04 - Multi-Host and Group-Based Inventory with Ansible

This section demonstrates how to manage multiple environments (e.g., **Production** and **Staging**) using **Ansible's group-based inventory** system. It also covers provisioning EC2 instances on AWS via **Terraform** and configuring them with environment-specific Ansible variables.

## 📚 Objectives

- Define group-based inventory for staging and production environments.
- Provision EC2 instances using Terraform.
- Configure host machines with Ansible depending on their environment group.
- Use separate `vars_files` for environment-based variable management.

## 🏗️ Project Structure

```bash
section-04/
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   ├── terraform.tfvars
│   └── ...
├── ansible/
│   ├── inventory/
│   │   └── inventory.ini
│   ├── group_vars/
│   │   ├── production.yml
│   │   └── staging.yml
│   ├── site.yml
│   └── roles/
│       └── common/
│           ├── tasks/
│           │   └── main.yml
│           └── ...
├── .gitignore
└── README.md

```

## Provision Infras Terraform

cd terraform  , terraform init ,terraform apply

## Configure Hosts Ansible

cd ../ansible
ansible-playbook -i inventory/inventory.ini site.yml
ansible-playbook -i inventory/staging.ini site.yml

[production]
instance_ip ansible_ssh_private_key_file=~/.ssh/terraform-ansible-key.pem

[staging]
instance_ip ansible_ssh_private_key_file=~/.ssh/terraform-ansible-key.pem
