# Simple local_file resource with data block

resource "local_file" "pet" {
  filename = "${path.module}/pets.txt"
  content  = data.local_file.dog.content
}

data "local_file" "dog" {
  filename = "${path.module}/dog.txt"
}