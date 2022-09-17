resource "local_file" "whale" {
  filename = "/home/terraform/data/local/local_file_with_dependence/whale"
  content = "whale"

  depends_on = [
      local_file.krill
  ]
}

resource "local_file" "krill" {
  filename = "/home/terraform/data/local/local_file_with_dependence/krill"
  content = "krill"
}
