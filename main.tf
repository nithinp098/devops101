terraform {
  backend "s3" {
    bucket = "bootstrap-session"
    key    = "state/bootstrap-vpc.tfstate"    
    region = "eu-west-2"
  }
}

module "london" {
  source     = "./modules"
  providers = {
    aws = aws.london
  }
}

module "ireland" {
  source     = "./modules"
  providers = {
    aws = aws.ireland
  }
}
