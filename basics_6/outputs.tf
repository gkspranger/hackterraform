output "IP Address" {
  value = "${module.container.ip}"
}

output "Container Name" {
  value = "${module.container.container_name}"
}

output "image name" {
  value = "${module.image.name}"
}
