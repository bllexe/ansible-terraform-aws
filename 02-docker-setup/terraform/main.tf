resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  vpc_security_group_ids = [aws_security_group.web_sg.id]

  tags = {
    Name        = "ansible-ec2"
    Environment = "dev"
  }
}

data "aws_vpc" "default" {
  default = true
  
}
