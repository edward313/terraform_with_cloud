

provider "aws" {
  region = "us-east-1"

}

# provider "aws" {
#   region     = "AWS_REGION"
#   access_key = "AWS_ACCESS_KEY"
#   secret_key = "AWS_SECRET_KEY"
# }

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


resource "aws_instance" "myedward" {
  ami           = "ami-0fc5d935ebf8bc3bc"
  instance_type = "t2.micro"
  key_name      = "terraform_ec2_key"

  tags = {
    Name = "edward"
  }

  vpc_security_group_ids = [aws_security_group.main.id]
}

resource "aws_key_pair" "terraform_ec2_key" {
  key_name   = "terraform_ec2_key"
  public_key = file("./keys/id_rsa.pub")
}


output "ec2_global_ips" {
  value = aws_instance.myedward.*.public_ip
}

#### file ends here ####
# terraform validate
# terraform plan
# terraform apply
# Once the ec2 instance is created, go to aws dashboard
# copy the ssh command (remove .pem) 
# ssh -i "terraform_ec2_key" ec2-user@your-ip-address
# 
# finally destroy everything
# terraform destroy
