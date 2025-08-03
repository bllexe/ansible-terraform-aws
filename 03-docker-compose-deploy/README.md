# 🚀 Section 03: Docker Compose Deployment with Ansible

This section demonstrates how to provision an EC2 instance using Terraform and then automate the setup of Docker and Docker Compose using Ansible. Finally, a simple Nginx container is deployed using Docker Compose, and it can be accessed via the EC2 public IP over HTTP.

---

## ✅ Goals

- Provision an EC2 instance using Terraform
- Install Docker and Docker Compose with Ansible
- Deploy an Nginx container using Docker Compose
- Access the running Nginx server via browser (http://<EC2_PUBLIC_IP>)

---

## 📁 Directory Structure

```bash
03-docker-compose-deploy/
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   └── terraform.tfvars
└── ansible/
    ├── inventory.ini
    ├── playbook.yml
    └── roles/
        ├── docker/
        │   └── tasks/
        │       └── main.yml
        └── docker_compose/
            ├── tasks/
            │   └── main.yml
            └── files/
                └── docker-compose.yml


--
## Initialize and Apply Terraform
cd terraform/
terraform init
terraform apply -auto-approve
