#terraform {
#  required_providers {
#    aws = {
#      source  = "hashicorp/aws"
#      version = "~> 4.16"
#    }
#  }
#
#  required_version = ">= 1.2.0"
#}

variable "aws_access_key" {}
variable "aws_secret_key" {}

provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region = "ap-northeast-1"
}

resource "aws_instance" "terraform" {
  ami                    = "ami-01e49e57cdc5b6f8d"
  instance_type          = "t3.micro"
  key_name               = "nakacya"
  vpc_security_group_ids = ["sg-0c17badbcbc2c6318"]
  subnet_id              = "subnet-91b257e6"

  tags = {
    Name = "ExampleTerraformInstance"
  }
}

resource "aws_instance" "terraform" {
  ami                    = "ami-01e49e57cdc5b6f8d"
  instance_type          = "t3.micro"
  key_name               = "nakacya"
  vpc_security_group_ids = ["sg-0c17badbcbc2c6318"]
  subnet_id              = "subnet-91b257e6"

  tags = {
    Name = "ExampleTerraformInstance"
  }
}

