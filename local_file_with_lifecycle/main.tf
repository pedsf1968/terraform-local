# Simple local_file resource with lifecycle
# change the filename with your own path
# change the lifecyle args to see the comportment with terraform commands
resource "local_file" "pet" {
  filename        = "/home/terraform/data/local/local_file_with_lifecycle/pets.txt"
  content         = "We love pets!"
  file_permission = "0700"

  lifecycle {
    # create_before_destroy = true
    # prevent_destroy = true
    ignore_changes = [
      content
    ]
  }
}
