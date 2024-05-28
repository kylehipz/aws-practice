

resource "aws_instance" "instance_1" {
  ami = data.aws_ami.al2.id
  instance_type = "t2.micro"

  vpc_security_group_ids = [aws_security_group.ssh_access.id, aws_security_group.http_access.id]

  user_data = file("${path.module}/user_data.sh")

  tags = {
    Name = "Kyle Instance 1"
  }
}

resource "aws_instance" "spot_instance" {
  ami = data.aws_ami.al2.id
  instance_type = "t2.micro"

  vpc_security_group_ids = [aws_security_group.ssh_access.id, aws_security_group.http_access.id]

  user_data = file("${path.module}/user_data.sh")

  instance_market_options {
    spot_options {
      max_price = "0.0065"
      spot_instance_type = "persistent"
      valid_until = "2024-05-30T00:00:00Z"
      instance_interruption_behavior = "stop"
    }
    market_type = "spot"
  }


  tags = {
    Name = "Kyle Spot Instance 1"
  }
}
