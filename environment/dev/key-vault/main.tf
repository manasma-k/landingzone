module "foundation" {
  source = "git::ssh://git@github.com/manasma-k/foundation.git//modules/key-vault?ref=CHANGE_ME"

  name                = manas
  resource_group_name = var.resource_group_name
  location            = var.location
  tenant_id           = var.tenant_id
  sku_name            = var.sku_name
  tags                = var.tags
}
