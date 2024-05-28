data "aws_ami" "al2" {
  most_recent = true

  filter {
    name = "name"
    values = ["amzn2-ami*"]
  }

  filter {
    name = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["amazon"]
}
