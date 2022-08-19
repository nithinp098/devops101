#region = "eu-west-2"

#vpc_cidr = "10.0.0.0/16"
#environment = "sharedservices"
#public_subnets_cidr = "[10.0.10.0/24, 10.0.11.0/24, 10.0.12.0/24]"
#private_subnets_cidr = "[10.0.20.0/24, 10.0.21.0/24, 10.0.22.0/24]"
#availability_zones = "[eu-west-2a, eu-west-2b, eu-west-2c]"

variable "aws_region" {
    type = string
}

variable "environment" {
    type = string
    default = "bootstrap"
}


variable "vpc_cidr" {
    default = "10.1.0.0/16"
}

variable "public_subnets_cidr" {
    type = list(string)
    default = ["10.1.1.0/24", "10.1.2.0/24", "10.1.3.0/24"]
}

variable "private_subnets_cidr" {
   type = list(string)
   default = ["10.1.4.0/24", "10.1.5.0/24", "10.1.6.0/24"]
}

variable "availability_zones" {
    description = "az"
    #type = list(string)
    #default = ["eu-west-2a", "eu-west-2b", "eu-west-2c"]
}

variable "image_id" {
    description = "Ami ID"
}
