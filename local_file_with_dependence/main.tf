# Simple local_file resources with one dependent of the other

resource "local_file" "whale" {
  filename = "${path.module}/whale"
  content = "whale"

  depends_on = [
      local_file.krill
  ]
}

resource "local_file" "krill" {
  filename = "${path.module}/krill"
  content = "krill"
}
