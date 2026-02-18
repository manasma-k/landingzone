resource_group_name = "rg-dev-network"
location            = "eastus"
vnet_name           = "vnet-dev-core"
address_space       = ["10.10.0.0/16"]
tags = {
  environment = "dev"
  managed_by  = "terraform"
}
