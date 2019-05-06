provider "aws" {
  region                  = "${var.aws_region}"
  profile                 = "${var.aws_profile}"
}

module "storage" {
  source       = "./storage"
  project_name = "${var.project_name}"
}

module "networking" {
  source       = "./networking"
  project_name = "${var.project_name}"
  vpc_cidr = "${var.vpc_cidr}"
  vpc_public_cidrs = "${var.vpc_public_cidrs}"
  accessip = "${var.accessip}"
}

module "compute" {
  source = "./compute"
  key_name = "${var.key_name}"
  public_key_path = "${var.public_key_path}"
  instance_count = "${var.instance_count}"
  instance_type = "${var.instance_type}"
  security_group  = "${module.networking.aws_public_sg_id}"
  subnet_ids      = "${module.networking.aws_subnet_ids}"
}
