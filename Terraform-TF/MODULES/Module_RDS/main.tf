provider "aws" {
    region = "eu-north-1"
}

module "db" {
   source = "./rds"

   #Rds
   engine_version = var.engine_version
   username = var.username
   password = var.password


} 
#