module "foundation" {
  source = "git::ssh://git@github.com/manasma-k/foundation.git//modules/storage-account?ref=CHANGE_ME"

  name                     = var.name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  tags                     = var.tags
}
