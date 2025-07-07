
resource "random_string" "suffix" {
  length  = 5
  upper   = false
  special = false
}

locals {
  environment_local = "${var.app_name}-${var.environment_name}-${random_string.suffix.result}"
}

resource "random_string" "list" {
  count   = length(var.regions)
  length  = 5
  upper   = false
  special = false
}

resource "random_string" "map" {
  for_each = var.region_instance_count
  length   = 5
  upper    = false
  special  = false
}

resource "random_string" "if" {
  count   = var.enabled ? 1 : 0
  length  = 5
  upper   = false
  special = false
}

module "module1" {
  source  = "hashicorp/module/random"
  version = "1.0.0"
}

module "module2" {
  source  = "hashicorp/module/random"
  version = "1.0.0"
}

