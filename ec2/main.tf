locals {
  region           = "us-east-2"
  powerUserProfile = "power-user"
  iamAdminProfile  = "power-user"
}
provider "aws" {
  region                  = local.region
  # shared_credentials_file = local.credentialsFile
  profile                 = local.powerUserProfile
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "2.12.0"

  name           = "my-ec2-cluster"
  instance_count = 1

  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.securitygroup
  subnet_id              = var.subnet

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
