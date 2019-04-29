output "aws_availability_zones" {
  value = "${data.aws_availability_zones.available.names}"
}

output "vpc_id" {
  value = "${aws_vpc.tf_vpc.id}"
}

output "aws_igw_id" {
  value = "${aws_internet_gateway.tf_internet_gateway.id}"
}

output "aws_public_route_id" {
  value = "${aws_route_table.tf_public_route.id}"
}
