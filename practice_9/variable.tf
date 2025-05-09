variable "virginia_cidr" {

}
variable "ohio_cidr" {
 
}
#variable "public_subnet" {
#  description = "CIDR public subnet"
#  type = string
#}
#variable "private_subnet" {
#  description = "CIDR private subnet"
#  type = string
#}
variable "subnets" {
  description = "Subnets list"
  type = list(string)
}
variable "tags" {
  description = "Tags of the project"
  type = map(string)
}