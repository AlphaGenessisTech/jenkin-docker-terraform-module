# Terraform Output Values
output "instance_publicip" {
  description = "EC2 Instance Public IP"
  value       = aws_instance.myec2vm.public_ip
}

output "instance_publicdns" {
  description = "EC2 Instance Public DNS"
  value       = aws_instance.myec2vm.public_dns
}

output "region" {
  description = "AWS region"
  value       = var.aws_region
}

output "instance_privateip" {
  description = "EC2 Instance Private IP"
  value       = aws_instance.myec2vm.private_ip
}