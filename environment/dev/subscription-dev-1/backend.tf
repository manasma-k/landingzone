terraform {
	required_version = ">= 1.5.0"

	required_providers {
    azurerm = {
      source                = "hashicorp/azurerm"
      version               = ">=3.00.0"
      configuration_aliases = [azurerm.remote,azurerm.remote2,azurerm.remote3, azurerm.remote4, azurerm.remote5, azurerm.remote6, azurerm.remote7, azurerm.remote8]
    }
  }

	backend "azurerm" {}
}

provider "azurerm" {
	features {}
}

provider "azurerm" {
	alias    = "remote"
	features {}
}

provider "azurerm" {
	alias    = "remote2"
	features {}
}

provider "azurerm" {
	alias    = "remote3"
	features {}
}

provider "azurerm" {
	alias    = "remote4"
	features {}
}
