module "foundation" {
  source = "git::ssh://git@github.com/manasma-k/foundation.git//modules/vnet?ref=CHANGE_ME"

  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  address_space       = var.address_space
  subnets             = var.subnets
  tags                = var.tags
}
