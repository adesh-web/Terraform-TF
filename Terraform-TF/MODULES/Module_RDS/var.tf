
variable "username" {
    default = "Adesh"     ###---------> this value goes into rds.tf file line (12)
}

variable "password" {
    default = "Adesh_17"  ###---------> this value goes into rds.tf file line (13)
  
}
variable "engine_version" {
    default = "11.4.8"
}

#
