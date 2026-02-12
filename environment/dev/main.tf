locals {
  rg_name            = "${var.name_prefix}-${var.environment}-rg"
  vnet_name          = "${var.name_prefix}-${var.environment}-vnet"
  storage_name       = "${var.name_prefix}${var.environment}st"
  key_vault_name     = "${var.name_prefix}-${var.environment}-kv"
  log_analytics_name = "${var.name_prefix}-${var.environment}-law"
}

module "resource_group" {
  source = "./resource-group"

  name     = local.rg_name
  location = var.location
  tags     = var.tags
}

module "networking" {
  source = "./networking"

  name                = local.vnet_name
  resource_group_name = local.rg_name
  location            = var.location
  address_space       = var.vnet_address_space
  subnets             = var.vnet_subnets
  tags                = var.tags
}

module "storage" {
  source = "./storage"

  name                     = local.storage_name
  resource_group_name      = local.rg_name
  location                 = var.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type
  tags                     = var.tags
}

module "key_vault" {
  source = "./key-vault"

  name                = local.key_vault_name
  resource_group_name = local.rg_name
  location            = var.location
  tenant_id           = var.tenant_id
  sku_name            = var.key_vault_sku_name
  tags                = var.tags
}

module "log_analytics" {
  source = "./log-analytics"

  name                = local.log_analytics_name
  resource_group_name = local.rg_name
  location            = var.location
  sku                 = var.log_analytics_sku
  retention_in_days   = var.log_analytics_retention_in_days
  tags                = var.tags
}
