terraform {
  backend "s3" {
    bucket = "bootstrap-session"
    key    = "state/bootstrap-vpc.tfstate"    
    region = "eu-west-2"
  }
}

module "london" {
  source     = "./modules/platform-modules"
  providers = {
    aws = aws.london
  }
  aws_region = "eu-west-2"
  availability_zones = ["eu-west-2a", "eu-west-2b", "eu-west-2c"]
  image_id = "ami-0e34bbddc66def5ac"
}







