resource "azurerm_resource_group" "foundation" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

module "vnets" {
  for_each = var.vnets
  source   = "./modules/vnet"

  name                = each.key
  location            = azurerm_resource_group.foundation.location
  resource_group_name = azurerm_resource_group.foundation.name
  address_space       = each.value.address_space
  tags                = merge(var.tags, try(each.value.tags, {}))
}
