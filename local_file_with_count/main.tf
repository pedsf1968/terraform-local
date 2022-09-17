# local_file with multiple resource implementation using count

resource "local_file" "pet" {
  filename = var.filename[count.index]
  content  = var.content[count.index]

  count = length(var.filename)
}

output "pet-out" {
  value = local_file.pet
  sensitive = true
}