
output "azurerm_resource_group" {
  value = azurerm_resource_group.main.name
}

output "azurerm_storage_account" {
  value     = azurerm_storage_account.main.name
  sensitive = true
}

