resource "aws_vpc" "vpc_virginia" {
  cidr_block = var.virginia_cidr
  tags = {
    Name = "VPC_VIRGINIA"
    Env = "Dev"
  }
}
resource "aws_subnet" "public_subnet" {
  vpc_id = aws_vpc.vpc_virginia.id
  cidr_block = var.subnets[0]
  map_public_ip_on_launch = true
  tags = {
    Name = "PUBLIC_SUBNET"
    Env = "Dev"
  }
}
resource "aws_subnet" "private_subnet" {
  vpc_id = aws_vpc.vpc_virginia.id
  cidr_block = var.subnets[1]
  tags = {
    Name = "SUBNET_PRIVATE"
    Env = "Dev"
  }
}
resource "aws_vpc" "vpc_ohio" {
  cidr_block = var.ohio_cidr
  tags = {
    Name = "VPC_OHIO"
    Env = "Dev"
  }
  provider = aws.ohio
}