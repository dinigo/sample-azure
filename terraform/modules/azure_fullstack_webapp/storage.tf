resource "azurerm_storage_account" "transactional" {
  name                     = "transactional${replace(var.app_name, "/[-_]/", "")}"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
