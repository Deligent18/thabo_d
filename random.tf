terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.6.3"
    }
  }
}


resource "random_string" "suffix" {
  length = 5
  special = false
  upper = false
}