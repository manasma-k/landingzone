module "vnet" {
  source = "git::https://github.com/manasma-k/foundation.git"

  resource_group_name = var.resource_group_name
  location            = var.location
  name                = var.vnet_name
  address_space       = var.address_space
  tags                = var.tags
}
