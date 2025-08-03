variable "aws_region" {
    default = "eu-central-1"
}

variable "instance_type" {
    default = "t2.micro"
}
  
variable "key_name" {
    description = "AWS EC2 key pair name"
    type = string
}

variable "public_key_path" {
    description = "Public key path"
    type = string
}

variable "environment_names" {
    description = "Environment names"
    type = list(string)
    default = [ "production", "staging" ]
  
}