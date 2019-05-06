aws_region = "us-east-1"
aws_profile = "personal"
project_name = "gkspranger"
vpc_cidr = "10.10.0.0/16"
vpc_public_cidrs = [
  "10.10.10.0/24",
  "10.10.20.0/24"
]
accessip = "0.0.0.0/0"
key_name = "gspranger"
public_key_path = "~/.ssh/terraform_rsa.pub"
instance_count = 1
instance_type = "t2.micro"
