resource "aws_vpc" "terra_vpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name = "${var.env}-vpc"
  }
}

resource "aws_subnet" "my_subnet" {
  vpc_id     = aws_vpc.terra_vpc.id
  cidr_block = var.subnet_cidr
  availability_zone = var.subnet_az

  tags = {
    Name = "Main"
  }
}

output "subnet_id" {
  value = aws_subnet.my_subnet.id 
}