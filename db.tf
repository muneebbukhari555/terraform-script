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

resource "aws_eip" "lb" {
  vpc      = true
}

output "my_eip" {
  value = aws_eip.lb.public_ip
}
