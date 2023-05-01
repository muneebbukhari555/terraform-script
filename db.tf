provider "aws" {
  region     = "us-east-1"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.0"
    }
  }
}

resource "aws_instance" "dev" {
  ami                    = ami-02396cdd13e9a1257
  instance_type          = t2.micro
}

output "my_eip" {
  value = aws_instance.dev.public_ip
}
