output "bucket_name" {
  value = "${module.storage.bucket_name}"
}

output "aws_availability_zones" {
  value = "${module.networking.aws_availability_zones}"
}

output "aws_vpc_id" {
  value = "${module.networking.vpc_id}"
}

output "aws_igw_id" {
  value = "${module.networking.aws_igw_id}"
}

output "aws_public_route_id" {
  value = "${module.networking.aws_public_route_id}"
}
