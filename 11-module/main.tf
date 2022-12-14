provider "aws" {
  region = "us-east-1"
}

module "module_vpc" {
  source = "./vpc"

  vpc_cidr_block    = "10.0.0.0/16"
  private_subnet_ip = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnet_ip  = ["10.0.4.0/24", "10.0.5.0/24"]
  availability_zone = ["us-east-1a", "us-east-1b"]
}
