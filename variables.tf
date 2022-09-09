variable "name" {
  type = string
}
variable "environment" {
  type = string
}
variable "cidr" {
  type = string
}
variable "availability_zones" {
  type = list(string)
}
variable "public_subnets" {
  type = list(string)
}
variable "aws-access-key" {
  type = string
}
variable "aws-secret-key" {
  type = string
}
variable "container_port" {
  type = number
}