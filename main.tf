
module "vpc"{
  source = "./modules/vpc"
}
module "security-group" {
  source = "./modules/security-group"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source = "./modules/ec2"
  vpc_id = module.vpc.vpc_id
}

