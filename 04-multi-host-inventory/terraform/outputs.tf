output "instance_ip" {
    value = {
        for idx,name in var.environment_names:
        name => aws_instance.env[idx].public_ip
    }
}
