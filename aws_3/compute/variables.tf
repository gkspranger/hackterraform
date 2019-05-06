variable "key_name" {}
variable "public_key_path" {}
variable "instance_count" {}
variable "instance_type" {}
variable "security_group" {}
variable "subnet_ids" {
  type = "list"
}
