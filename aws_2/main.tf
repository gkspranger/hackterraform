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
}
