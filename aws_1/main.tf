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
}
