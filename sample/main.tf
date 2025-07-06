
resource "random_string" "helloman" {
  length  = 5
  upper   = false
  special = false
}


locals {
  environment_local = "${var.app_name}-${var.environment_name}"
}
