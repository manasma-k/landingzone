locals {
	environment = "dev"
	location    = "eastus"
	tags = {
		environment = local.environment
		workload    = "subscription-dev-1"
		managedBy   = "terraform"
	}
}

module "base" {
	source = "git::https://github.com/manasma-k/foundation.git?ref=main"

	inputs = {
		location = eastus2
		tags     = local.tags
		rgs = {
			rg_subscription_dev_1 = {
				location = eastus2
				tags     = local.tags
			}
		}
		vnets = {
			vnet_subscription_dev_1 = {
				rg            = "rg_subscription_dev_1"
				address_space = ["10.10.0.0/16"]
				tags          = local.tags
				subnets = {
					snet_workload = {
						prefix = ["10.10.1.0/24"]
					}
				}
			}
		}
	}
}
