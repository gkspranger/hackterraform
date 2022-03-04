variable "mystring" {
  type        = string
  description = "i seeing what a validation is"
  default     = "i am a string"

  validation {
    condition     = length(split(" ", var.mystring)) >= 1
    error_message = "The value is empty."
  }

  validation {
    condition     = contains(split(" ", var.mystring), "string")
    error_message = "The value does not contain the word 'string'."
  }
}

# variable "mystringfail" {
#   type        = string
#   description = "i seeing what a validation failure is"
#   default     = "fail"

#   validation {
#     condition     = contains(split(" ", var.mystringfail), "string")
#     error_message = "The value does not contain the word 'string'."
#   }
# }

locals {
  mylocal = {
    mystring = var.mystring
  }
}

output "myoutput" {
  value = local.mylocal
}
