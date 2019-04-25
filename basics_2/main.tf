# plugins is local to TF file
# so that means stored in .terraform/*
# `terraform init` whenever starting out so plugins can be downloaded

# Download the latest Ghost Image
resource "docker_image" "image_id" {
  name = "ghost:latest"
}

# Start the Container
resource "docker_container" "container_id" {
  name  = "blog"
  image = "${docker_image.image_id.latest}"
  ports {
    internal = "2368"
    external = "80"
  }
}

#Output the IP Address of the Container
output "IP Address" {
  value = "${docker_container.container_id.ip_address}"
}

output "container_name" {
  value = "${docker_container.container_id.name}"
}

# can see all vars by using `terraform show`
# can apply many times, and will always see the output

# example output

# Apply complete! Resources: 2 added, 0 changed, 0 destroyed.
#
# Outputs:
#
# IP Address = 172.17.0.2
# container_name = blog
