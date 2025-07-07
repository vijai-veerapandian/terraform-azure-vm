resource "random_string" "id" {
  keepers = {
      uuid = uuid()
  }

  length = var.string_length
}