resource "aws_instance" "vault_demo" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = "t2.micro"
  subnet_id              = data.aws_subnet_ids.default.ids[0]
  key_name               = aws_key_pair.deployer.key_name
  vpc_security_group_ids = [aws_security_group.vault_demo_sg.id]

  tags = {
    Name = "vault-demo-instance"
  }

  provisioner "remote-exec" {
    inline = ["sudo apt update", "sudo apt install -y python3"]

    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = tls_private_key.example.private_key_pem
      host        = self.public_ip
    }
  }
}
