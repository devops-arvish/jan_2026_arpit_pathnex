
resource "azurerm_resource_group" "resource_group" {
  name = var.rg_name
  location = var.location
}
resource "azurerm_storage_account" "storage_name" {
  name = var.storage_account_name
  resource_group_name = azurerm_resource_group.resource_group.name
  location = azurerm_resource_group.resource_group.location
  account_tier = "Standard"
  account_replication_type = "LRS"
}
