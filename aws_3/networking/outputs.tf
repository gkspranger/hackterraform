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

output "aws_subnet_azs" {
  value = "${aws_subnet.tf_public_subnet.*.availability_zone}"
}

output "aws_subnet_cidr_blocks" {
  value = "${aws_subnet.tf_public_subnet.*.cidr_block}"
}

output "aws_subnet_ids" {
  value = "${aws_subnet.tf_public_subnet.*.id}"
}

output "aws_public_sg_id" {
  value = "${aws_security_group.tf_public_sg.id}"
}
