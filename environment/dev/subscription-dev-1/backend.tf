terraform {
	required_version = ">= 1.5.0"

	required_providers {
    azurerm = {
      source                = "hashicorp/azurerm"
      version               = ">=3.00.0"
      configuration_aliases = [azurerm.remote]
    }
  }

	backend "azurerm" {}
}

provider "azurerm" {
	alias    = "remote"
	features {}
	subscription_id = "4eddb456-1696-47e9-b24c-825f989a3704"
}
provider "azurerm" {
	alias    = "remote1"
	features {}
	subscription_id = "4eddb456-1696-47e9-b24c-825f989a3704"
}
provider "azurerm" {
	alias    = "remot2"
	features {}
	subscription_id = "4eddb456-1696-47e9-b24c-825f989a3704"
}
provider "azurerm" {
	alias    = "remote3"
	features {}
	subscription_id = "4eddb456-1696-47e9-b24c-825f989a3704"
}
provider "azurerm" {
	alias    = "remote4"
	features {}
	subscription_id = "4eddb456-1696-47e9-b24c-825f989a3704"
}
variable "subscription_id" {
	type    = string
	default = ""
}

variable "tenant_id" {
	type    = string
	default = ""
}

variable "client_id" {
	type    = string
	default = ""
}
