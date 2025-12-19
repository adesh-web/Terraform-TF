provider "aws" {
region = "eu-north-1"  
}

module "vpc" {                 ## VPC module block
  source = "./VPC"

  project                = "cdecb45"
  vpc_cidr_block         = "172.0.0.0/16"
  vpc_cidr_pub_subnet    = "172.0.0.0/20"
  vpc_cidr_pri_subnet    = "172.0.16.0/20"
}

#



