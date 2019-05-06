output "key_name" {
  value = "${aws_key_pair.tf_auth.key_name}"
}

output "aml_ami_id" {
  value = "${data.aws_ami.server_ami.image_id}"
}
