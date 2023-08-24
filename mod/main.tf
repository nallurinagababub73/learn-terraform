module "ec2" {
  source = "./ec2"
  security_group_id = module.sg.sg_id
}
module "sg" {
  source = "./sg"
}