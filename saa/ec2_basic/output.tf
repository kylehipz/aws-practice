output "ip1" {
  value = aws_instance.instance_1.public_ip
}

output "ip2" {
  value = aws_instance.instance_2.public_ip
}
