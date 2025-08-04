# 🧩 Section 05 – Dynamic Inventory with AWS EC2

This section demonstrates how to configure **dynamic inventory** in Ansible to automatically discover running EC2 instances in AWS.

---

## ✅ Goals

- Use Ansible’s `aws_ec2` inventory plugin.
- Automatically discover EC2 instances based on filters and tags.
- Deploy an example Nginx server to the discovered instances.

---

---

## 🚀 Prerequisites

- Python packages:
  ```bash
  pip install boto3 botocore
