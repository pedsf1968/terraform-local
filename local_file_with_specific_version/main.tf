# Simple local_file resource tha use a specific version of provider
terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.1.0"
    }
  }
}

resource "local_file" "pet" {
  filename        = "${path.module}/pets.txt"
  content         = "We love pets!"
  file_permission = "0700"
}
