module "ec2" {                  # EC2 module block start
  source = "./EC2"

  project           = var.project
  ami_id            = var.ami_id
  instance_type     = var.instance_type
  key_name          = var.key_name
  security_group_id = var.security_group_id
}

