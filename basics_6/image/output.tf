output "image_out" {
  value = "${docker_image.image_id.latest}"
}

output "name" {
  value = "${docker_image.image_id.name}"
}
