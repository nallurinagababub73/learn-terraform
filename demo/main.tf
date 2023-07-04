resource "aws_instance" "sample_ec2" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"

  tags = {
    Name = "sample ec2 instance"
  }
}