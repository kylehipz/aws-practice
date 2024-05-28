resource "aws_security_group" "ssh_access" {
  name = "SSH Access"
  description = "Allow ssh access to kyle"

  ingress = [
    {
      cidr_blocks = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      from_port = 22
      to_port = 22
      protocol = "tcp"
      self = false
      security_groups = []
      prefix_list_ids = []
      description = "Port 22"
    }
  ]

  tags = {
    Name = "SSH Access"
  }
}

resource "aws_security_group" "http_access" {
  name = "HTTP Access"
  description = "Allow users to access port 80, allow outbound traffic as well"

  ingress = [
    {
      cidr_blocks = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      from_port = 80
      to_port = 80
      protocol = "tcp"
      self = false
      security_groups = []
      prefix_list_ids = []
      description = "Port 80"
    }
  ]

  egress = [
    {
      cidr_blocks = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      from_port = 0
      to_port = 0
      protocol = "-1"
      self = false
      security_groups = []
      prefix_list_ids = []
      description = "All traffic"
    }
  ]

  tags = {
    Name = "HTTP Access"
  }
}
