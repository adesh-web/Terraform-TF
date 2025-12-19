provider "aws" {
  region = "eu-north-1"
  
}

module "alb" {
  source = "./modules/alb"

  name               = "my-alb"
  vpc_id             = module.vpc.vpc_id
  subnets            = module.vpc.public_subnet_ids
  security_groups    = module.alb_sg.sg_id

}



