data "http" "myhttp" {
  url = "https://checkpoint-api.hashicorp.com/v1/check/terraform"

  request_headers = {
    Accept = "application/json"
  }
}

locals {
  myhttp = {
    myhttp = jsondecode(data.http.myhttp.body)
  }
}

output "myhttp" {
  value = local.myhttp
}
