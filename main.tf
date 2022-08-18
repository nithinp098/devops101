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
}

module "ireland" {
  source     = "./modules/platform-modules"
  providers = {
    aws = aws.ireland
  }
  aws_region = "eu-west-1"
}
