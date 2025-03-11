resource "azurerm_cosmosdb_account" "db" {
  name                = "cosmos_db-${var.app_name}"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  offer_type          = "Standard"
  kind                = "MongoDB"
}
