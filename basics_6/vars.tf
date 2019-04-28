variable "env" {
  description = "dev or prod"
}

variable "container_name" {
  default = {
    "dev" = "dev_blog",
    "prod" = "blog"
  }
}

variable "image" {
  # the ENV var will be used in a lookup to determine which to use
  default = {
    "dev" = "ghost:latest",
    "prod" = "ghost:alpine"
  }
}

variable "int_port" {
  default = {
    "dev" = "2368",
    "prod" = 2368
  }
}
variable "ext_port" {
  default = {
    "dev" = "8080",
    "prod" = "80"
  }
}
