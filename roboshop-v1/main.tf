module "frontend" {
  source = "./ec2"
  name = "frontend"
}
module "catalogue" {
  source = "./ec2"
  name = "catalogue"
}
module "user" {
  source = "./ec2"
  name = "user"
}
module "cart" {
  source = "./ec2"
  name = "cart"
}
module "shipping" {
  source = "./ec2"
  name = "shipping"
}
module "payment" {
  source = "./ec2"
  name = "payment"
}
module "mongodb" {
  source = "./ec2"
  name = "mongodb"
}
module "mysql" {
  source = "./ec2"
  name = "mysql"
}
module "redis" {
  source = "./ec2"
  name = "redis"
}
module "rabbitmq" {
  source = "./ec2"
  name = "rabbitmq"
}
output "frontend_dns" {
  value = module.frontend.dns-record
}
