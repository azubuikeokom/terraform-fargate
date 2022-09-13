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
variable "private_subnets" {
  type = list(string)
}
variable "aws-access-key" {
  type = string
  sensitive = true
}
variable "aws-secret-key" {
  type = string
  sensitive = true
}
variable "container_port" {
  type = number
}
variable "region"{
  type = string
  default = "us-east-1"
}