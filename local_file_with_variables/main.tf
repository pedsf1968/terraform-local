# Simple local_file resource using variables in separate file variables.tf
# change the filename with your own path on variables.tf
resource "local_file" "pet" {
    filename = var.filename
    content = var.content
    file_permission = "0700"
}
