output "ami" {
  value = data.aws_ami.al2.id
}

output "ssh_security_group" {
  value = aws_security_group.ssh_access.id
}

output "http_security_group" {
  value = aws_security_group.http_access.id
}
