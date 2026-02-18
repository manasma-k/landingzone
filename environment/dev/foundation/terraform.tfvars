resource_group_name = "rg-dev-network"
location            = "eastus"

tags = {
  environment = "dev"
  managed_by  = "terraform"
}

vnets = {
  vnet-dev-core = {
    address_space = ["10.10.0.0/16"]
    tags = {
      workload = "core"
    }
  }

  vnet-dev2-core = {
    address_space = ["172.10.0.0/24"]
    tags = {
      workload = "secondary"
    }
  }
}