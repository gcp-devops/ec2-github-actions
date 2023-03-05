module "bastion" {
  source              = "../../modules/bastion"
  environment         = "development"
  vpc_id              = "vpc-0018bf3b33af1c456"
  public_subnet_ids   = "subnet-003d573d46408608e"
  ssh_key_pair_name   = "amzlinux2"
  security_groups_ids = ["sg-0c79d04e2bbee6eb7"]
}

provider "aws" {
  region = var.region
}

terraform {
  required_version = ">= 0.13.1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.5"
    }
  }
}
