resource "azurerm_resource_group" "foundation" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

resource "azurerm_virtual_network" "foundation" {
  name                = var.vnet_name
  location            = azurerm_resource_group.foundation.location
  resource_group_name = azurerm_resource_group.foundation.name
  address_space       = var.address_space
  tags                = var.tags
}
