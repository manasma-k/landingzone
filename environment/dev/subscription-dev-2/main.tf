terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0.0"
    }
  }
}

provider "azurerm" {
  features {}
}

locals {
  environment = "dev"
  location    = "eastus"
  tags = {
    environment = local.environment
    workload    = "subscription-dev-2"
    managedBy   = "terraform"
  }
}

variable "resource_group_name" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "private_frontend_ip_address" {
  type = string
}

variable "ssl_certificate_secret_id" {
  type = string
}

variable "backend_ip_addresses" {
  type = list(string)
}

variable "listener_host_name" {
  type    = string
  default = null
}

module "application_gateway" {
  source = "../../../modules/application-gateway-base"

  name                        = "agw-subscription-dev-2"
  resource_group_name         = var.resource_group_name
  location                    = local.location
  subnet_id                   = var.subnet_id
  private_frontend_ip_address = var.private_frontend_ip_address
  ssl_certificate_secret_id   = var.ssl_certificate_secret_id
  backend_ip_addresses        = var.backend_ip_addresses
  listener_host_name          = var.listener_host_name
  tags                        = local.tags
}

output "application_gateway_id" {
  value = module.application_gateway.id
}

output "application_gateway_private_ip" {
  value = module.application_gateway.private_frontend_ip
}
