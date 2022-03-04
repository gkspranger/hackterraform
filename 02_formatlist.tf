locals {
  myformattedlist = {
    myformattedlist = formatlist("Hello %s!", ["Greg", "Angie"])
  }
}

output "myformattedlist" {
  value = local.myformattedlist
}
