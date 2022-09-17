# Simple local_file resource

resource "local_file" "pet" {
  filename        = "${path.module}/pets.txt"
  content         = "We love pets!"
  file_permission = "0700"
}
