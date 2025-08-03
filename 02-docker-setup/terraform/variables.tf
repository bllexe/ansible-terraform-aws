
variable "aws_region" {
    default = "eu-central-1"
}

variable "key_name" {
 description = "Aws Ec2 key pair name"
}

variable "instance_type" {
    default = "t2.micro"
}

variable "ami_id" {
    description = "Amazon Linux 2 AMI ID"
  
}
  