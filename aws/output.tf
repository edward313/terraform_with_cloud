output "ec2_global_ips" {
  value = aws_instance.myedward.*.public_ip
}
