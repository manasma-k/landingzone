module "vnet" {
  source = "github.com/manasma-k/foundation?ref=main"

  inputs = {
    location = var.location
    vnets = {
      (var.vnet_name) = {
        rg            = var.resource_group_name
        address_space = var.vnet_address_space
        tags          = var.tags
      }
    }
  }
}
