resource "aws_instance" "EC2" {
  count = length(var.components)
  ami           = data.aws_ami.example.id
  instance_type = "t3.micro"
  vpc_security_group_ids = [var.security_group_id]

  tags = {
    Name = var.components[count.index]
  }
}
variable "components" {
  default = ["frontend","catalogue","user","cart"]
}
data "aws_ami" "example" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]
}
variable "security_group_id" {}