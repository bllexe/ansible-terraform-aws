variable "region" {
  type    = string
  default = "eu-central-1"
}

variable "key_name" {
  type = string
}

variable "public_key_path" {
  type = string
}

variable "ami" {
  type    = string
  default = "ami-0c55b159cbfafe1f0" 
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "env_name" {
  type = string
}
