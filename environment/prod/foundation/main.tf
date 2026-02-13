module "vnet" {
  source = "github.com/manasma-k/foundation?ref=main"

  vnet_name           = var.vnet_name
  vnet_address_space  = var.vnet_address_space
  location            = var.location
  resource_group_name = var.resource_group_name
  tags                = var.tags
}
