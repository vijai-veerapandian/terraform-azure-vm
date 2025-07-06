
resource "random_string" "helloman" {
  length  = 5
  upper   = false
  special = false
}


locals {
  environment_local = "helloworld"

}
