terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.7"
    }
  }

  required_version = ">= 1.2"
}

resource "random_pet" "name" {
  length    = 2
  separator = "-"
}

output "name" {
  value = random_pet.name.id
}