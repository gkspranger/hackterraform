# `terraform init` to download needed providers

# resource "docker_image" "image_id" {
#   name = "ghost:latest"
# }

# change image tag // was 'latest'
# will NOT force new container resource, until container has changed // been tainted
resource "docker_image" "image_id" {
  name = "ghost:alpine"
}

# `terraform plan` to see what will be done
# `terraform apply` to do :thething:
# `terraform show` to show what was done

# use previously defined "image_id" to create container
# docker_container.container_id (new resource required)
resource "docker_container" "container_id" {
  name  = "blog"
  image = "${docker_image.image_id.latest}"
  ports {
    internal = "2368"
    # external = "80"
    # changing container resource will force new container
    # ports.0.external: "80" => "8080" (forces new resource)
    external = "8080"
  }
}

# `terraform taint docker_container.container_id` to force new resource
# `terraform untaint docker_container.container_id` to undo taint
# `terraform plan` to see what will be done // new docker container resource
# `terraform apply` to do :thething: // new docker container resource

# docker_container.container_id: Destroying... (ID: e3cabf79b25ba30b07fc5629e1698845017502de63f789697a81ce245f6dc796)
# docker_container.container_id: Destruction complete after 0s
# docker_container.container_id: Creating...
