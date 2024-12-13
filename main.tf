// step # 1 - provider

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
}

// step # 2 - resource

resource "aws_instance" "minha_instancia_ec2" {
  ami           = "ami-06b21ccaeff8cd686"
  instance_type = "t2.micro"

  tags = {
    Name            = "my-custom-instance"
    contato_suporte = "suporte@sextatech.com"
    contexto        = "sexta-tech"
    vpc_id          = data.aws_vpc.default.id
    env             = "prod"
  }
}

resource "aws_s3_bucket" "meu-bucket-s3" {
  bucket = "sexta-tech-example"

  tags = var.default_tags
}

data "aws_vpc" "default" {
  default = true
}

variable "default_tags" {
  type = map(string)
  default = {
    contato_suporte = "suporte@sextatech.com",
    contexto        = "sexta-tech"
    env             = "prod"
  }
}
