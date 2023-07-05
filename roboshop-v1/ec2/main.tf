resource "aws_instance" "sample_ec2" {
  ami = data.aws_ami.example.id
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.sg.id]

  tags = {
    Name = var.name
  }
}

data "aws_ami" "example" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]

}

resource "aws_security_group" "sg" {
  name        = "sg of ${var.name}"

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.name
  }
}
resource "aws_route53_record" "dns" {
  zone_id = "Z0684247D5O5IEDBEU86"
  name    = "${var.name}-dev"
  type    = "A"
  ttl     = 300
  records = [aws_instance.sample_ec2.private_ip]
}
variable "name" {}

output "dns-record" {
  value = aws_route53_record.dns.name
}

