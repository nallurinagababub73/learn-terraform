resource "aws_instance" "ec2" {
  for_each = var.components
  ami = data.aws_ami.example.id
  instance_type = lookup(each.value,"instance_type","t3.micro")

  tags = {
    Name = lookup(each.value,"name","ec2")
  }
}

data "aws_ami" "example" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]

}
variable "components" {
        default = {
          frontend = {
            name = "frontend"
            instance_type = "t3.micro"
          }
          catalogue = {
            name = "catalogue"
            instance_type = "t3.small"
          }
          user = {
            name = "user"
            instance_type = "t3.nano"
          }
        }
}