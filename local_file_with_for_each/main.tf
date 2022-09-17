# local_file with multiple resource implementation using for_each

resource "local_file" "pet" {
  filename = each.value
  content  = each.value

  # to use with set(string)
  #for_each = var.filename
  # to use with list(string)
  for_each = toset(var.filename)
}

output "name" {
  value = local_file.pet
}