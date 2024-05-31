
module "config" {
  source = "../common/ec2_config"
}


resource "aws_instance" "instance_1" {
  ami = module.config.ami
  instance_type = "t2.micro"

  vpc_security_group_ids = [
    module.config.ssh_security_group,
    module.config.http_security_group,
  ]

  user_data = file("${path.module}/user_data.sh")

  tags = {
    Name = "Kyle Instance 1"
  }
}

resource "aws_instance" "instance_2" {
  ami = module.config.ami
  instance_type = "t2.micro"

  vpc_security_group_ids = [
    module.config.ssh_security_group,
    module.config.http_security_group,
  ]

  user_data = file("${path.module}/user_data.sh")

  # instance_market_options {
  #   spot_options {
  #     max_price = "0.0065"
  #     spot_instance_type = "persistent"
  #     valid_until = "2024-05-30T00:00:00Z"
  #     instance_interruption_behavior = "stop"
  #   }
  #   market_type = "spot"
  # }


  tags = {
    Name = "Kyle Instance 2"
  }
}
