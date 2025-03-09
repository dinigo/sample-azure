resource "random_pet" "rg_name" {
  prefix = var.resource_group_name
}

resource "azurerm_resource_group" "rg" {
  location = var.resource_group_location
  name     = random_pet.rg_name.id
}

resource "azurerm_static_web_app" "sample_vite_spa" {
  name                = "sample-vite-spa"
  resource_group_name = azurerm_resource_group.rg.name
  repository_branch   = "main"
  repository_token    = var.repository_token
  repository_url      = "https://github.com/dinigo/sample-azure"
  location            = azurerm_resource_group.rg.location
}
