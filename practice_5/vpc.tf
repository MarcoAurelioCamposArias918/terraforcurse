resource "aws_vpc" "vpc_virginia" {
  cidr_block = var.virginia_cidr
  tags = {
    Name = "VPC_VIRGINIA"
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
variable "virginia_cidr" {

}
variable "ohio_cidr" {
 
}