output "instance_ip" {
  description = "IP address of public instance"
  value       = aws_instance.public.public_ip
}

output "ssh" {
  description = "SSH details for the instance"
  value = "ssh -i ${aws_key_pair.main.key_name}.pem ec2-user@${aws_instance.public.public_ip}"
}
