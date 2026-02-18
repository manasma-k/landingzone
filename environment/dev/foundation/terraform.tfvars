resource_group_name = "rg-dev-network"
location            = "eastus"
vnet_name           = "vnet-dev-core"
address_space       = ["10.10.0.0/16"]
tags = {
  environment = "dev"
  managed_by  = "terraform"
}
resource_group_name = "rg-prod-network"
location            = "eastus"
vnet_name           = "vnet-prod-core"
address_space       = ["10.0.0.0/16"]
tags = {
  environment = "prod"
  managed_by  = "terraform"
}