locals {
  myregex = {
    myregex = regex("(\\d+)-(\\d+)-(\\d+)", "2022-03-04")
  }
}

output "myregex" {
  value = local.myregex
}
