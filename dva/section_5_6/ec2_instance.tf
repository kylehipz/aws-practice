

resource "aws_instance" "instance_1" {
  ami = data.aws_ami.al2.id
  instance_type = "t2.micro"

  vpc_security_group_ids = [aws_security_group.ssh_access.id, aws_security_group.http_access.id]

  user_data = file("${path.module}/user_data.sh")

  tags = {
    Name = "Kyle Instance 1"
  }
}
