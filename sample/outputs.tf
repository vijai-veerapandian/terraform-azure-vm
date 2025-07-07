output "app_name" {
  value = var.app_name
}

output "environment_name" {
  value = var.environment_name
}

output "environment_local" {
  value = local.environment_local
}

output "suffix" {
  value = random_string.suffix.result
}

output "api_key" {
  value     = "${var.api_key}bar"
  sensitive = true
}
/*
output "primary_region" {
  value = var.regions[0]
}

output "primary_region_instance_count" {
  value = lookup(var.region_instance_count, "westus", null)
}

output "module1" {
  value = module.module1.random_string
}

output "module2" {
  value = module.module2.random_string
}
*/

output "regionA" {
  value = module.regions["apple"].name
}

output "regionB" {
  value = module.regions["banana"].name
}
