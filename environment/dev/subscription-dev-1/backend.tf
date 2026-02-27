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
	subscription_id = var.subscription_id != "" ? var.subscription_id : null
	tenant_id       = var.tenant_id != "" ? var.tenant_id : null
	client_id       = var.client_id != "" ? var.client_id : null
}

provider "azurerm" {
	alias    = "remote"
	features {}
	subscription_id = var.subscription_id != "" ? var.subscription_id : null
	tenant_id       = var.tenant_id != "" ? var.tenant_id : null
	client_id       = var.client_id != "" ? var.client_id : null
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
