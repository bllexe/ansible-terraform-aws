output "public_ip" {
  value = aws_instance.nginx_host.public_ip
}