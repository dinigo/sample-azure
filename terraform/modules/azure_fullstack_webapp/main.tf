resource "azurerm_resource_group" "rg" {
  location = var.resource_group_location
  name     = "rg-${var.app_name}"
}

resource "azurerm_static_web_app" "sample_vite_spa" {
  name                = var.app_name
  resource_group_name = azurerm_resource_group.rg.name
  repository_branch   = var.app_repo_branch
  repository_token    = var.repository_token
  repository_url      = var.repository_url
  location            = azurerm_resource_group.rg.location
}
