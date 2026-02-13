module "foundation" {
  source = "git::ssh://git@github.com/manasma-k/foundation.git//modules/log-analytics?ref=CHANGE_ME"

  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.sku
  retention_in_days   = var.retention_in_days
  tags                = var.tags
}
