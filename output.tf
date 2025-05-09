output "ec2_public_ip" {
  description = "Public ip of the instace"
  value = aws_instance.public_instance.public_ip
}