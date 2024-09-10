terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">=1.2.0"
}

provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "terraform_build_instance" {
  ami = "ami-0c6da69dd16f45f72"
  instance_type = "t3.micro"

  tags = {
    Name = "demoInstanceBuildFromTerraform"
  }
}
