variable "environment" {
  type    = string
  default = "dev"
}

variable "location" {
  type = string
}

variable "name_prefix" {
  type = string
}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "subscription_id" {
  type = string
}

variable "tenant_id" {
  type = string
}

variable "vnet_address_space" {
  type = list(string)
}

variable "vnet_subnets" {
  type = map(object({
    address_prefixes = list(string)
  }))
}

variable "storage_account_tier" {
  type    = string
  default = "Standard"
}

variable "storage_account_replication_type" {
  type    = string
  default = "LRS"
}

variable "key_vault_sku_name" {
  type    = string
  default = "standard"
}

variable "log_analytics_sku" {
  type    = string
  default = "PerGB2018"
}

variable "log_analytics_retention_in_days" {
  type    = number
  default = 30
}
