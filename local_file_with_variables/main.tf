# Simple local_file resource using variables in separate file variables.tf and locals.tf
# variables.tf can't contain other variables like $path.module

resource "local_file" "pet" {
    filename = local.filename
    content = var.content
    file_permission = "0700"
}
