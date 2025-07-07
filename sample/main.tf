
resource "random_string" "suffix" {
  length  = 5
  upper   = false
  special = false
}

/*
locals {
  environment_local = "${var.app_name}-${var.environment_name}-${random_string.suffix.result}"
}
*/
/*
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
  source = "./modules/random"
}

module "module2" {
  source = "./modules/random"
}

module "alpha" {
  source = "./modules/random"
}
*/
/*
module "regionA" {
  source         = "./modules/regions"
  region         = "westus"
  name           = "apple"
  min_node_count = 2
  max_node_count = 4

}

module "regionB" {
  source         = "./modules/regions"
  region         = "eastus"
  name           = "banana"
  min_node_count = 2
  max_node_count = 4
}
*/
locals {
  environment_local = "${var.app_name}-${var.environment_name}-${random_string.suffix.result}"

  regions = {
    "apple" = {
      region         = "westus"
      min_node_count = 2
      max_node_count = 4
    },
    "banana" = {
      region         = "eastus"
      min_node_count = 2
      max_node_count = 4
    }
  }
}

module "regions" {
  source = "./modules/regions"

  for_each       = local.regions
  region         = each.value.region
  name           = each.key
  min_node_count = each.value.min_node_count
  max_node_count = each.value.max_node_count
}

