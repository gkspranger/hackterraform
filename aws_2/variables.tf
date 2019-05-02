variable "aws_region" {}
variable "aws_profile" {}
variable "project_name" {}
variable "vpc_cidr" {}
variable "vpc_public_cidrs" {
  type = "list"
}
variable "accessip" {}
variable "key_name" {}
variable "public_key_path" {}
