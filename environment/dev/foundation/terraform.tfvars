resource_group_name = "rg-dev-network"
location            = "eastus"
vnet_name           = "vnet-dev-core"
address_space       = ["10.10.0.0/16"]
tags = {
  environment = "dev"
  managed_by  = "terraform"
},
resource_group_name = "rg-dev2-network"
location            = "eastus"
vnet_name           = "vnet-dev2-core"
address_space       = ["172.10.0.0/24"]
tags = {
  environment = "dev2"
  managed_by  = "terraform"
}