# Simple local_file resource
# change the filename with your own path
resource "local_file" "pet" {
  filename        = "/home/terraform/data/local/local_file/pets.txt"
  content         = "We love pets!"
  file_permission = "0700"
}
