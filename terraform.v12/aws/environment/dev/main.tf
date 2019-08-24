provider "aws" {
  region = "eu-central-1"
}

#####
# Vpc
#####

module "vpc" {
  source = "../../modules/vpc"

  vpc-location                        = "Frankfurt"
  namespace                           = "cloudelligent"
  name                                = "vpc"
  stage                               = "dev"
  map_public_ip_on_launch             = "true"
  total-nat-gateway-required          = "2"
  create_database_subnet_group        = "true"
  vpc-cidr                            = "10.11.0.0/16"
  vpc-public-subnet-cidr              = ["10.11.1.0/24", "10.11.2.0/24", "10.11.3.0/24"]
  vpc-private-subnet-cidr             = ["10.11.4.0/24", "10.11.5.0/24", "10.11.6.0/24"]
  vpc-database_subnets-cidr           = ["10.11.7.0/24", "10.11.8.0/24", "10.11.9.0/24"]
}

