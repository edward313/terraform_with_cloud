

resource "aws_security_group" "main" {
  egress = [
    {
      cidr_blocks      = ["0.0.0.0/0", ]
      description      = ""
      from_port        = 0
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "-1"
      security_groups  = []
      self             = false
      to_port          = 0
    }
  ]
  ingress = [
    {
      cidr_blocks      = ["0.0.0.0/0", ]
      description      = ""
      from_port        = 22
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "tcp"
      security_groups  = []
      self             = false
      to_port          = 22
    }
  ]
}

resource "aws_key_pair" "ssh_key" {
  key_name   = "ssh_key"
  public_key = file("./keys/id_rsa.pub")
}


resource "aws_instance" "myedward" {
  ami           = var.ami //ubutu
  instance_type = "t2.micro"
  key_name      = "ssh_key"

  tags = {
    Name = "edward"
  }

  vpc_security_group_ids = [aws_security_group.main.id]
}



