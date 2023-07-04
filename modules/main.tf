module "frontend" {
  source = "./ec2"
  name = "frontend"
}
module "catalogue" {
  source = "./ec2"
  name = "catalogue"
}
