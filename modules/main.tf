module "frontend" {
  source = "./ec2"
  name = "frontend"
}
module "catalogue" {
  source = "./ec2"
  name = "catalogue"
}

output "public_ip_frontend" {
  value = module.frontend.public_ip
}
output "public_ip_catalogue" {
  value = module.catalogue.public_ip
}