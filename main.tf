provider "aws" {
  region = "us-east-1"
  access_key = "AKIATDRUQARCN35GX4F6"
  secret_key = "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"
}

resource "aws_vpc" "first-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "production"
  }
}

resource "aws_subnet" "subnet-1" {
  vpc_id     = aws_vpc.first-vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "prod-subnet"
  }
}